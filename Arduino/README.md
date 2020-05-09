# Firmware for the ionosonde hardware

The ionosonde is located at the Breinosa mountain next to the Svalbard SuperDARN and EISCAT Svalbard Radars. As this location is very close to the instrument approach route to the Longyear airport (ENSB), there is an additional safety mechanism. In short, there is a button at the airport that stops all radars from transmitting.

While it is unlikely that the ionosonde with its very small transmission power would have any effect on airplane instrumentation, it too also be disabled along with its big brothers whenever the button at the aiport is pressed.

The ionosonde uses a software-defined radio and then there is this "firmware" for the Arduino that may also have interesting bugs. In order to reduce the risks of uncontrolled RF transmissions, there is hardware watchdog circuitry that will reset the Arduino when in doubt.

### Notes

The normal `Serial.print()` function in Arduino uses the windows-style line endings - at least when programmed in Windows environment. In Linux, you should configure the serial port to translate the line ends. For example

`stty inlcr </dev/ttyUSB0`

### TODO
* The serial communication to the logger needs to be done via the actual serial port rather than via the Arduino's normal USB-serial. The reason is that every time one opens the device in linux e.g. `/dev/ttyUSB0`, Arduino will automatically reset (which is not what we want)
