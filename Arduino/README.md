# Firmware for the ionosonde hardware

The ionosonde is located at the Breinosa mountain next to the Svalbard SuperDARN and EISCAT Svalbard Radars. As this location is very close to the instrument approach route to the Longyear airport (ENSB), there is an additional safety mechanism. In short, there is a button at the airport that stops all radars from transmitting. This is called *airport interlock* : when active, no transmissions are allowed.

While it is unlikely that the ionosonde with its very small transmission power would have any effect on airplane instrumentation, it too should be disabled along with its big brothers whenever the button at the aiport is pressed.

This Arduino "firmware" that may also have interesting bugs. In order to reduce the risks of uncontrolled RF transmissions, there is a hardware watchdog circuit. If the software does not "pet" the watchdog regularly - about once every two seconds - then the radio transmitter is switched off and the Arduino is reset.

The ionosonde uses a software-defined radio where the computer controls selection of transmission frequencies etc. The USRP toggles a digital output pin every time it retunes to a new frequency: if this does not happen sufficiently often, then either the ionosonde is not running properly or it is not running at all. In both cases, the transmitter amplifier should be switched off regardless of the airport interlock status.

The current watchdog system is not perfect, but it is independent of the Arduino. Jack Ganssle wrote an interesting article about [Great Watchdog Timers for Embedded Systems][http://www.ganssle.com/watchdogs.htm]. 

### Notes

The normal `Serial.print()` function in Arduino uses the windows-style line endings - at least when programmed in Windows environment. In Linux, you should configure the serial port to translate the line ends. For example

`stty inlcr </dev/ttyUSB0`

### TODO
* The serial communication to the logger needs to be done via the actual serial port rather than via the Arduino's normal USB-serial. The reason is that every time one opens the device in linux e.g. `/dev/ttyUSB0`, Arduino will automatically reset (which is not what we want)
