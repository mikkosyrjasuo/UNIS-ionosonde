// Svalbard ionosonde radar airport interlock control
//
// Mikko Syrjäsuo / UNIS
//
// The operating principle is that there is a web server that publishes the status of the airport interlock signal from the Longyearbyen airport.
// Ionosonde transmissions are only allowed if
//  (1) there is a valid connection to the server and
//  (2) based on the data from the server there is no airport interlock.
//
// Furthermore, the transmissions should be allowed only when the ionosonde software is running correctly, which introduces
// more constraints
//  (3) the signal from the USRP SDR indicates that the software is running correctly
//
// The external circuit connected to the Arduino uses a hardware watchdog (MAX693) that expects regular "petting" or toggling a single GPIO
// output every few seconds. If that does not take place, the watchdog will reset the Arduino, after which there is a longer time period
// to allow the system to boot up.
//
// NOTE: the watchdog reset has to be disabled when programming/debugging the Arduino code to avoid unexpected resets... :-)
//
// NOTE: the hardware uses an obsolete Arduino Ethernet. At the time, an off-the-shelf equivalent setup would be an Arduino Uno with
// an Ethernet shield.

// 9 May 2020
// - first version based on the SuperDARN airport interlock code
// - small modifications to allow using with the new ionosonde


//#define DEBUG

#include <SPI.h>         // needed for Arduino versions later than 0018
#include <Ethernet.h>

#define MAXSOFTDOG 10 // How many re-tries are allowed to get a correct string from the interlock server

//---------------------------------------------------------------------------------------------------------------------------------
// General I/O setup
//
// Pins 4 & 10 are used by the Ethernet Shield SPI communication to the ethernet chip and the SD card. The SuperDARN
// system does not use an SD card, so the chip select line *must* be set to output a HIGH value.

const int TOGGLEpin = LED_BUILTIN;      // The "heart beat" of the system, toggles when software is running correctly (for other Arduinos)
const int INTERLOCKpin = 7;   // If ON, then the airport interlock is active i.e. no transmissions are allowed
const int SERVERFAILpin = 6;    // If ON, then the connection to the airport interlock server is ok and status can be read
const int TXONpin = 5;        // When transmission is on (monitor USRP), this light is on.
const int RELAYpin = 4;       // The relay control pin for disabling transmissions.
const int WATCHDOGpin = 3;    // The pin connected to WDI of MAX693 (with external pull-up)
const int USRPpin = 2 ;       // This is the heart beat from the USRP

//---------------------------------------------------------------------------------------------------------------------------------

unsigned long lastConnectionTime = 0;             // last time you connected to the server, in milliseconds
const unsigned long pettingInterval = 2L * 1000L; // delay between updates, in milliseconds

// Substring to look for and network buffers
const char keywordInterlock[] = "INTERLOCK";
const char keywordAllowed[] =    "allowed";
byte receiveIndexInterlock = 0;
byte receiveIndexAllowed = 0;

// Enter a MAC address for your controller below.
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xEF };

//IPAddress server(158, 39, 70, 144); // The interlock server at ESR
IPAddress server(10, 0, 0, 20); // The interlock server at ESR

// Set a static IP address for this board
IPAddress ip(10, 0, 0, 21);

// Initialize the Ethernet client library
EthernetClient client;

//---------------------------------------------------------------------------------------------------------------------------------

void PetWatchdog(void) {
  // Toggle the heart beat
  digitalWrite(TOGGLEpin, !digitalRead(TOGGLEpin));   // Use the "heart beat" LED to show that the software is running
  digitalWrite(WATCHDOGpin, !digitalRead(WATCHDOGpin));   //  This goes to the WDI pin of MAX693
}

//---------------------------------------------------------------------------------------------------------------------------------
// Flash the LEDs at the boot

void bootFlash(void) {
  for (unsigned char i = 1; i < 5; i++) {
    digitalWrite(SERVERFAILpin, HIGH);
    digitalWrite(INTERLOCKpin, LOW);
    digitalWrite(TXONpin, LOW);
    delay(100);
    digitalWrite(SERVERFAILpin, LOW);
    digitalWrite(INTERLOCKpin, HIGH);
    digitalWrite(TXONpin, LOW);
    delay(100);
    digitalWrite(SERVERFAILpin, LOW);
    digitalWrite(INTERLOCKpin, LOW);
    digitalWrite(TXONpin, HIGH);
    delay(100);
  }
}

//---------------------------------------------------------------------------------------------------------------------------------
//

void setup() {
  // init digital I/O and the LEDs

  pinMode(RELAYpin, OUTPUT);
  digitalWrite(RELAYpin, LOW); // Relay off, no transmissions

  pinMode(USRPpin, INPUT_PULLUP); // Expect LOW if the USRP is working correctly

  pinMode(SERVERFAILpin, OUTPUT);
  pinMode(INTERLOCKpin, OUTPUT);
  pinMode(TOGGLEpin, OUTPUT);
  pinMode(WATCHDOGpin, OUTPUT);
  pinMode(TXONpin, OUTPUT);

  bootFlash(); // Do a quick flashing routine with the LEDs to announce a restart

  // Init the LEDs
  digitalWrite(SERVERFAILpin, HIGH);   // Not yet connected to the airlock web server
  digitalWrite(INTERLOCKpin, HIGH);    // Do not allow transmissions
  digitalWrite(TOGGLEpin, LOW);        // turn the heartbeat LED off
  digitalWrite(WATCHDOGpin, HIGH);     // A known starting point for toggling (there is a pull-up resistor, so the WDI state does not change)
  digitalWrite(TXONpin, LOW);          // No information about the transmissions yet

  // For logging purposes, regular status reports to e.g. Raspberry PI will be provided via
  // the serial link
  Serial.begin(9600);

  // Report the restart of the airport interlock system
  Serial.println("*** Ionosonde airport interlock restart ***");

  // "Pet" the dog after reset: this gets MAX693 out from the longer "reset timeout". After this the dog needs a pet more frequently.
  PetWatchdog();

  //---------------------------
  // Configure the network

  pinMode(4, OUTPUT); // Disable SD SPI before trying to do anything with Ethernet
  digitalWrite(4, HIGH); // See http://www.arduino.cc/en/Main/ArduinoEthernetShield

  Ethernet.begin(mac, ip);
  // give the Ethernet shield a second to initialize:
  delay(1000);
}

//---------------------------------------------------------------------------------------------------------------------------------
// A short report to be provided via the serial line to a PC/Raspberry/etc. for logging status changes

void reportStatus(void) {
  // Provide a status report via serial line
  if (digitalRead(INTERLOCKpin) == 0) {
    Serial.print("interlockFALSE,");
  }    else {
    Serial.print("interlockTRUE,");
  }
  if (digitalRead(SERVERFAILpin) == 0) {
    Serial.print("serverfailFALSE,");
  }    else {
    Serial.print("serverfailTRUE,");
  }
  if (digitalRead(TXONpin) == 0) {
    Serial.print("txFALSE,");
  }    else {
    Serial.print("txTRUE,");
  }
  if (digitalRead(RELAYpin) == 0) {
    Serial.print("relayOFF,");
  }    else {
    Serial.print("relayON,");
  }
  if (digitalRead(USRPpin) == 0) {
    Serial.println("usrpLOW");
  }    else {
    Serial.println("usrpHIGH");
  }
}


//---------------------------------------------------------------------------------------------------------------------------------
// Get the airport interlock status from the web - the code is based on the
// WebClient example (ethernet)

void httpRequest() {
  // Prepare a clean start for the new http request
  client.stop();

  if (client.connect(server, 80)) {
    // send the HTTP GET request:
    client.println("GET /index.html HTTP/1.1");
    client.println("Host: 10.0.0.21:80");
    client.println("User-Agent: arduino-ethernet");
    client.println("Connection: close");
    client.println();

    // note the time that the connection was made:
    lastConnectionTime = millis();
    digitalWrite(SERVERFAILpin, LOW); // There was a successful connection

  } else {
    // No connection made - disable all transmissions
    digitalWrite(INTERLOCKpin, HIGH); // Interlock warning on
    digitalWrite(RELAYpin, LOW); // Switch off the transmissions
    digitalWrite(SERVERFAILpin, HIGH); // Server fail warning LED on
  }
}


//---------------------------------------------------------------------------------------------------------------------------------

void loop() {
  if (client.available()) {
    char c = client.read();
    // Look for the keyword "INTERLOCK", a
    if (c == keywordInterlock[receiveIndexInterlock]) {
      receiveIndexInterlock++;
    } else {
      receiveIndexInterlock = 0;
    }
    if (receiveIndexInterlock > 8) {
      // Interlock detected
      receiveIndexInterlock = 0;

      digitalWrite(INTERLOCKpin, HIGH);    // Do not allow transmission
      digitalWrite(SERVERFAILpin, LOW);    // There is a good connection
      digitalWrite(RELAYpin, LOW); // Switch the transmitter power off
    }

    // Look for the keyword "allowed"
    if (c == keywordAllowed[receiveIndexAllowed]) {
      receiveIndexAllowed++;
    } else {
      receiveIndexAllowed = 0;
    }
    if (receiveIndexAllowed > 6) {
      receiveIndexAllowed = 0;

      // Good connection to the server and transmissions are allowed
      digitalWrite(INTERLOCKpin, LOW);    // No airport interlock
      digitalWrite(SERVERFAILpin, LOW);   // There is good connection
      digitalWrite(TXONpin, !digitalRead(USRPpin)); // The signal from USRP is low if there is a transmission

      // If the USRP is running fine, then switch on the RF power amplifier
      if (digitalRead(TXONpin) == 1) {
        digitalWrite(RELAYpin, HIGH); // Switch the transmitter power on
      } else {
        digitalWrite(RELAYpin, LOW); //
      }
    }
  }

  // if three seconds have passed since your last connection,
  // then pet the watchdgod and try to connect again and get data:
  if (millis() - lastConnectionTime > pettingInterval) {
    PetWatchdog();
    lastConnectionTime = millis();
    httpRequest();
    reportStatus();
    receiveIndexInterlock = 0;
    receiveIndexAllowed = 0;

  }
}
