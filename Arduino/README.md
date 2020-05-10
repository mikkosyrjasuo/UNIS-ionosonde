# Firmware for the ionosonde hardware

The ionosonde is located at the Breinosa mountain next to the Svalbard SuperDARN and EISCAT Svalbard Radars. As this location is very close to the instrument approach route to the Longyear airport (ENSB), there is an additional safety mechanism. In short, there is a button at the airport that stops all radars from transmitting. This is called *airport interlock* : when active, no transmissions are allowed.

While it is unlikely that the ionosonde with its very small transmission power would have any effect on airplane instrumentation, it too should be disabled along with its big brothers whenever the button at the aiport is pressed.

This Arduino "firmware" that may also have interesting bugs. In order to reduce the risks of uncontrolled RF transmissions, there is a hardware watchdog circuit. If the software does not "pet" the watchdog regularly - about once every two seconds - then the radio transmitter is switched off and the Arduino is reset.

The ionosonde uses a software-defined radio where the computer controls selection of transmission frequencies etc. The USRP toggles a digital output pin every time it retunes to a new frequency: if this does not happen sufficiently often, then either the ionosonde is not running properly or it is not running at all. In both cases, the transmitter amplifier should be switched off regardless of the airport interlock status.

The current watchdog system is not perfect, but it is independent of the Arduino. Jack Ganssle wrote an interesting article about [Great Watchdog Timers for Embedded Systems][http://www.ganssle.com/watchdogs.htm]. 

### Notes

The normal `Serial.print()` function in Arduino uses the windows-style line endings - at least when programmed in Windows environment. In Linux, you should configure the serial port to translate the line ends. For example

`stty inlcr </dev/ttyUSB0`

If one uses the normal USB-cable, any time the receiving logger (Raspberry PI) opens the device in linux e.g. `/dev/ttyUSB0`, Arduino will automatically reset. This is definitely not the desired behaviour as the logger should only monitor the status.

Arduino Ethernet is programmed with a special USB-serial cable (5V FTDI) and the DTR pin is used for resetting the Arduino. The most straightforward way to prevent the logger from resetting the Arduino is to simply leave this pin unconnected. I did this by swapping the 6-pin header to a 5-pin one (the centremost pin is DTR). For Arduinos with a an actual USB port, one could probably use the TxD and RxD pins (D0 and D1) in similar fashion with a FTDI cable. I have not tested this, though.
