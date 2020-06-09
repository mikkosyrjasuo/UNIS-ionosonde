EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Ionosonde airport interlock"
Date "2020-05-15"
Rev ""
Comp "Mikko Syrjäsuo/UNIS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R8
U 1 1 5EB9862C
P 3100 6300
F 0 "R8" V 2893 6300 50  0000 C CNN
F 1 "330" V 2984 6300 50  0000 C CNN
F 2 "" V 3030 6300 50  0001 C CNN
F 3 "~" H 3100 6300 50  0001 C CNN
	1    3100 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EB9FDE9
P 4550 1550
F 0 "R2" V 4343 1550 50  0000 C CNN
F 1 "270" V 4434 1550 50  0000 C CNN
F 2 "" V 4480 1550 50  0001 C CNN
F 3 "~" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:DS18B20-PAR U2
U 1 1 5EBA3719
P 5050 4400
F 0 "U2" H 4820 4389 50  0000 R CNN
F 1 "DS18B20-PAR" H 4820 4298 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4050 4150 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20-PAR.pdf" H 4900 4650 50  0001 C CNN
	1    5050 4400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5EBA7B87
P 1250 1100
F 0 "#PWR03" H 1250 850 50  0001 C CNN
F 1 "GND" H 1255 927 50  0000 C CNN
F 2 "" H 1250 1100 50  0001 C CNN
F 3 "" H 1250 1100 50  0001 C CNN
	1    1250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EBA8777
P 5050 4800
F 0 "#PWR012" H 5050 4550 50  0001 C CNN
F 1 "GND" H 5055 4627 50  0000 C CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4800 5050 4700
$Comp
L power:+5V #PWR02
U 1 1 5EBAC07F
P 1250 850
F 0 "#PWR02" H 1250 700 50  0001 C CNN
F 1 "+5V" H 1265 1023 50  0000 C CNN
F 2 "" H 1250 850 50  0001 C CNN
F 3 "" H 1250 850 50  0001 C CNN
	1    1250 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EBAD1A8
P 4600 4150
F 0 "R4" H 4670 4196 50  0000 L CNN
F 1 "4k7" H 4670 4105 50  0000 L CNN
F 2 "" V 4530 4150 50  0001 C CNN
F 3 "~" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5EBAD921
P 4600 3950
F 0 "#PWR011" H 4600 3800 50  0001 C CNN
F 1 "+5V" H 4615 4123 50  0000 C CNN
F 2 "" H 4600 3950 50  0001 C CNN
F 3 "" H 4600 3950 50  0001 C CNN
	1    4600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5EBAF710
P 7500 4650
F 0 "TH1" H 7598 4696 50  0000 L CNN
F 1 "pt100" H 7598 4605 50  0000 L CNN
F 2 "" H 7500 4700 50  0001 C CNN
F 3 "~" H 7500 4700 50  0001 C CNN
	1    7500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EBB0CA3
P 7500 4150
F 0 "R3" H 7570 4196 50  0000 L CNN
F 1 "10k" H 7570 4105 50  0000 L CNN
F 2 "" V 7430 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EBB2259
P 7500 4850
F 0 "#PWR010" H 7500 4600 50  0001 C CNN
F 1 "GND" H 7505 4677 50  0000 C CNN
F 2 "" H 7500 4850 50  0001 C CNN
F 3 "" H 7500 4850 50  0001 C CNN
	1    7500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5EBB257F
P 7500 3950
F 0 "#PWR09" H 7500 3800 50  0001 C CNN
F 1 "+5V" H 7515 4123 50  0000 C CNN
F 2 "" H 7500 3950 50  0001 C CNN
F 3 "" H 7500 3950 50  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3950 7500 4000
Wire Wire Line
	7500 4800 7500 4850
$Comp
L Isolator:LTV-356T U5
U 1 1 5EBB3C6B
P 12350 6650
F 0 "U5" H 12350 6975 50  0000 C CNN
F 1 "VO618A" H 12350 6884 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 12150 6450 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-010/S_110_LTV-356T%2020140520.pdf" H 12350 6650 50  0001 L CNN
	1    12350 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5EBB59B6
P 12750 6850
F 0 "#PWR024" H 12750 6600 50  0001 C CNN
F 1 "GND" H 12755 6677 50  0000 C CNN
F 2 "" H 12750 6850 50  0001 C CNN
F 3 "" H 12750 6850 50  0001 C CNN
	1    12750 6850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12750 6850 12750 6750
Wire Wire Line
	12750 6750 12650 6750
Wire Wire Line
	12650 6550 12800 6550
$Comp
L Device:R R11
U 1 1 5EBB9C1E
P 12800 6300
F 0 "R11" H 12870 6346 50  0000 L CNN
F 1 "47k" H 12870 6255 50  0000 L CNN
F 2 "" V 12730 6300 50  0001 C CNN
F 3 "~" H 12800 6300 50  0001 C CNN
	1    12800 6300
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5EBB9FF3
P 12800 6100
F 0 "#PWR025" H 12800 5950 50  0001 C CNN
F 1 "+5V" H 12815 6273 50  0000 C CNN
F 2 "" H 12800 6100 50  0001 C CNN
F 3 "" H 12800 6100 50  0001 C CNN
	1    12800 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12800 6100 12800 6150
Wire Wire Line
	12800 6450 12800 6550
$Comp
L Device:LED D6
U 1 1 5EBBB17D
P 11700 6550
F 0 "D6" H 11693 6766 50  0000 C CNN
F 1 "GREEN LED" H 11693 6675 50  0000 C CNN
F 2 "" H 11700 6550 50  0001 C CNN
F 3 "~" H 11700 6550 50  0001 C CNN
	1    11700 6550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5EBBBEA9
P 11250 6550
F 0 "R10" V 11043 6550 50  0000 C CNN
F 1 "33" V 11134 6550 50  0000 C CNN
F 2 "" V 11180 6550 50  0001 C CNN
F 3 "~" H 11250 6550 50  0001 C CNN
	1    11250 6550
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5EBBC3A9
P 10750 6550
F 0 "J2" H 10830 6542 50  0000 L CNN
F 1 "USRP GPIO pins" H 10830 6451 50  0000 L CNN
F 2 "" H 10750 6550 50  0001 C CNN
F 3 "~" H 10750 6550 50  0001 C CNN
	1    10750 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10950 6550 11100 6550
Wire Wire Line
	11400 6550 11550 6550
Wire Wire Line
	11850 6550 12050 6550
Wire Wire Line
	12050 6750 10950 6750
Wire Wire Line
	10950 6750 10950 6650
$Comp
L Switch:SW_SPDT SW2
U 1 1 5EBED583
P 2600 8150
F 0 "SW2" H 2600 8435 50  0000 C CNN
F 1 "SW_SPDT" H 2600 8344 50  0000 C CNN
F 2 "" H 2600 8150 50  0001 C CNN
F 3 "~" H 2600 8150 50  0001 C CNN
	1    2600 8150
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5EBEDFBD
P 1900 4300
F 0 "J1" H 1980 4292 50  0000 L CNN
F 1 "USB to 5V serial" H 1980 4201 50  0000 L CNN
F 2 "" H 1900 4300 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
Text GLabel 1650 4100 0    50   Input ~ 0
FTDI-GND
Text GLabel 1650 4200 0    50   Input ~ 0
FTDI-CTS
Text GLabel 1650 4300 0    50   Input ~ 0
FTDI-VCC
Text GLabel 1650 4400 0    50   Input ~ 0
FTDI-TxD
Text GLabel 1650 4500 0    50   Input ~ 0
FTDI-RxD
Text GLabel 1650 4600 0    50   Input ~ 0
FTDI-RTS
Wire Wire Line
	1700 4100 1650 4100
Wire Wire Line
	1700 4200 1650 4200
Wire Wire Line
	1700 4300 1650 4300
Wire Wire Line
	1700 4400 1650 4400
Wire Wire Line
	1700 4500 1650 4500
Wire Wire Line
	1700 4600 1650 4600
Text Notes 5300 5900 2    50   Italic 0
RF PA power switch
Text Notes 8750 4450 2    50   Italic 0
Attached to RF PA heat sink
Text Notes 5800 4100 2    50   Italic 0
For ambient temperature
Text Notes 9850 6950 0    50   Italic 0
Heartbeat from the USRP\n3V3 logic levels
Wire Wire Line
	2100 8250 2400 8250
Wire Wire Line
	9950 1700 9950 1600
Wire Wire Line
	9950 1300 9950 1200
Wire Wire Line
	13600 3300 14450 3300
$Comp
L Device:LED D3
U 1 1 5EBC2CC3
P 9950 1850
F 0 "D3" H 9943 2066 50  0000 C CNN
F 1 "RED LED" H 9943 1975 50  0000 C CNN
F 2 "" H 9950 1850 50  0001 C CNN
F 3 "~" H 9950 1850 50  0001 C CNN
	1    9950 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5EBC29E7
P 9950 1450
F 0 "R6" V 9743 1450 50  0000 C CNN
F 1 "270" V 9834 1450 50  0000 C CNN
F 2 "" V 9880 1450 50  0001 C CNN
F 3 "~" H 9950 1450 50  0001 C CNN
	1    9950 1450
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5EBC25F3
P 9950 1200
F 0 "#PWR015" H 9950 1050 50  0001 C CNN
F 1 "+5V" H 9965 1373 50  0000 C CNN
F 2 "" H 9950 1200 50  0001 C CNN
F 3 "" H 9950 1200 50  0001 C CNN
	1    9950 1200
	1    0    0    -1  
$EndComp
Connection ~ 13800 2600
Wire Wire Line
	13800 3750 13800 2600
Wire Wire Line
	13600 3750 13800 3750
Wire Wire Line
	11650 4300 11650 4200
Wire Wire Line
	12150 4050 12150 4300
$Comp
L power:GND #PWR06
U 1 1 5EBBA7F2
P 11650 4300
F 0 "#PWR06" H 11650 4050 50  0001 C CNN
F 1 "GND" H 11655 4127 50  0000 C CNN
F 2 "" H 11650 4300 50  0001 C CNN
F 3 "" H 11650 4300 50  0001 C CNN
	1    11650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 3900 12250 3900
Wire Wire Line
	12250 4050 12150 4050
Wire Wire Line
	13700 4050 13700 4150
Wire Wire Line
	13600 4050 13700 4050
$Comp
L power:GND #PWR013
U 1 1 5EBB5301
P 13700 4150
F 0 "#PWR013" H 13700 3900 50  0001 C CNN
F 1 "GND" H 13705 3977 50  0000 C CNN
F 2 "" H 13700 4150 50  0001 C CNN
F 3 "" H 13700 4150 50  0001 C CNN
	1    13700 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EBB4993
P 12150 4300
F 0 "#PWR08" H 12150 4050 50  0001 C CNN
F 1 "GND" H 12155 4127 50  0000 C CNN
F 2 "" H 12150 4300 50  0001 C CNN
F 3 "" H 12150 4300 50  0001 C CNN
	1    12150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 2600 13800 2600
Wire Wire Line
	13800 2450 13800 2600
Wire Wire Line
	13800 2050 13800 2150
$Comp
L power:+5V #PWR014
U 1 1 5EBAD2A2
P 13800 2050
F 0 "#PWR014" H 13800 1900 50  0001 C CNN
F 1 "+5V" H 13815 2223 50  0000 C CNN
F 2 "" H 13800 2050 50  0001 C CNN
F 3 "" H 13800 2050 50  0001 C CNN
	1    13800 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5EBACAE0
P 13800 2300
F 0 "R5" V 13593 2300 50  0000 C CNN
F 1 "33k" V 13684 2300 50  0000 C CNN
F 2 "" V 13730 2300 50  0001 C CNN
F 3 "~" H 13800 2300 50  0001 C CNN
	1    13800 2300
	1    0    0    -1  
$EndComp
NoConn ~ 12250 3750
NoConn ~ 13600 3900
NoConn ~ 13600 3600
NoConn ~ 13600 3000
NoConn ~ 12250 3600
Connection ~ 11200 3450
Wire Wire Line
	11200 3000 11200 3450
Wire Wire Line
	12250 3000 11200 3000
Wire Wire Line
	12150 3300 12250 3300
Connection ~ 12150 3300
Wire Wire Line
	12150 3150 12150 3300
Wire Wire Line
	12250 3150 12150 3150
Wire Wire Line
	11850 3300 12150 3300
$Comp
L power:+5V #PWR07
U 1 1 5EBA02C1
P 11850 3300
F 0 "#PWR07" H 11850 3150 50  0001 C CNN
F 1 "+5V" H 11865 3473 50  0000 C CNN
F 2 "" H 11850 3300 50  0001 C CNN
F 3 "" H 11850 3300 50  0001 C CNN
	1    11850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 3450 11200 3450
$Comp
L power:GND #PWR05
U 1 1 5EB9E48D
P 11200 3450
F 0 "#PWR05" H 11200 3200 50  0001 C CNN
F 1 "GND" H 11205 3277 50  0000 C CNN
F 2 "" H 11200 3450 50  0001 C CNN
F 3 "" H 11200 3450 50  0001 C CNN
	1    11200 3450
	1    0    0    -1  
$EndComp
$Comp
L Ionosonde_watchdog:MAX693 U1
U 1 1 5EB978A2
P 12900 2850
F 0 "U1" H 12925 2965 50  0000 C CNN
F 1 "MAX693" H 12925 2874 50  0000 C CNN
F 2 "" H 12900 2850 50  0001 C CNN
F 3 "" H 12900 2850 50  0001 C CNN
	1    12900 2850
	1    0    0    -1  
$EndComp
Text GLabel 2100 8250 0    50   Input ~ 0
FTDI-RTS
$Comp
L Device:C C1
U 1 1 5EBD44E3
P 11650 4050
F 0 "C1" H 11765 4096 50  0000 L CNN
F 1 "470p" H 11765 4005 50  0000 L CNN
F 2 "" H 11688 3900 50  0001 C CNN
F 3 "~" H 11650 4050 50  0001 C CNN
	1    11650 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 1750 8250 1650
Wire Wire Line
	8250 1350 8250 1250
$Comp
L Device:LED D7
U 1 1 5EBFAE46
P 8250 1900
F 0 "D7" H 8243 2116 50  0000 C CNN
F 1 "LED" H 8243 2025 50  0000 C CNN
F 2 "" H 8250 1900 50  0001 C CNN
F 3 "~" H 8250 1900 50  0001 C CNN
	1    8250 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5EBFAE4C
P 8250 1500
F 0 "R13" V 8043 1500 50  0000 C CNN
F 1 "270" V 8134 1500 50  0000 C CNN
F 2 "" V 8180 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5EBFAE52
P 8250 1250
F 0 "#PWR028" H 8250 1100 50  0001 C CNN
F 1 "+5V" H 8265 1423 50  0000 C CNN
F 2 "" H 8250 1250 50  0001 C CNN
F 3 "" H 8250 1250 50  0001 C CNN
	1    8250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 8600 11300 8500
$Comp
L power:GND #PWR021
U 1 1 5EBFAE5D
P 11300 8600
F 0 "#PWR021" H 11300 8350 50  0001 C CNN
F 1 "GND" H 11305 8427 50  0000 C CNN
F 2 "" H 11300 8600 50  0001 C CNN
F 3 "" H 11300 8600 50  0001 C CNN
	1    11300 8600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EBFAEA5
P 11300 8350
F 0 "C2" H 11415 8396 50  0000 L CNN
F 1 "1n" H 11415 8305 50  0000 L CNN
F 2 "" H 11338 8200 50  0001 C CNN
F 3 "~" H 11300 8350 50  0001 C CNN
	1    11300 8350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13000 6550 12800 6550
Connection ~ 12800 6550
$Comp
L Device:D D4
U 1 1 5EBD4D6D
P 15000 3150
F 0 "D4" V 14954 3229 50  0000 L CNN
F 1 "D" V 15045 3229 50  0000 L CNN
F 2 "" H 15000 3150 50  0001 C CNN
F 3 "~" H 15000 3150 50  0001 C CNN
	1    15000 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	13600 3150 14850 3150
Wire Wire Line
	2800 8150 3050 8150
Text Notes 12300 4750 0    50   ~ 0
With C=470pF, the watchdog periods are roughly\n- 16 seconds after reset\n- 4 seconds after the first WDI change
Text Notes 10050 8200 0    50   ~ 0
The reset period\nT_RP (ms) = 3.125 x C_RP (nF). \nNot relevant for this\ncircuit...
$Comp
L Switch:SW_SPDT SW3
U 1 1 5EBD37AA
P 2600 10300
F 0 "SW3" H 2600 10585 50  0000 C CNN
F 1 "SW_SPDT" H 2600 10494 50  0000 C CNN
F 2 "" H 2600 10300 50  0001 C CNN
F 3 "~" H 2600 10300 50  0001 C CNN
	1    2600 10300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5EBDC99F
P 1900 10400
F 0 "R12" H 1970 10446 50  0000 L CNN
F 1 "47k" H 1970 10355 50  0000 L CNN
F 2 "" V 1830 10400 50  0001 C CNN
F 3 "~" H 1900 10400 50  0001 C CNN
	1    1900 10400
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5EBDCE43
P 1600 10400
F 0 "#PWR027" H 1600 10250 50  0001 C CNN
F 1 "+5V" H 1615 10573 50  0000 C CNN
F 2 "" H 1600 10400 50  0001 C CNN
F 3 "" H 1600 10400 50  0001 C CNN
	1    1600 10400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 6300 2950 6300
$Comp
L power:GND #PWR017
U 1 1 5EBEA473
P 2250 6600
F 0 "#PWR017" H 2250 6350 50  0001 C CNN
F 1 "GND" H 2255 6427 50  0000 C CNN
F 2 "" H 2250 6600 50  0001 C CNN
F 3 "" H 2250 6600 50  0001 C CNN
	1    2250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6600 2250 6400
Wire Wire Line
	2250 6400 2350 6400
Text Notes 1700 5900 0    50   Italic 0
Manual interlock switch - disable all transmissions
Text Notes 2300 10600 0    50   Italic 0
Disable USRP watchdog
Text Notes 1600 8600 0    50   Italic 0
Disable watchdog reset\n(needed for reprogramming Arduino)
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5EBEF639
P 2550 6300
F 0 "SW1" H 2550 6585 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2550 6494 50  0000 C CNN
F 2 "" H 2550 6300 50  0001 C CNN
F 3 "~" H 2550 6300 50  0001 C CNN
	1    2550 6300
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5EBF09ED
P 2600 7400
F 0 "SW1" H 2600 7685 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2600 7594 50  0000 C CNN
F 2 "" H 2600 7400 50  0001 C CNN
F 3 "~" H 2600 7400 50  0001 C CNN
	2    2600 7400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EBF2712
P 7200 1500
F 0 "R7" V 6993 1500 50  0000 C CNN
F 1 "270" V 7084 1500 50  0000 C CNN
F 2 "" V 7130 1500 50  0001 C CNN
F 3 "~" H 7200 1500 50  0001 C CNN
	1    7200 1500
	1    0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5EBF2FEE
P 7200 1900
F 0 "D5" H 7193 1645 50  0000 C CNN
F 1 "RED LED" H 7193 1736 50  0000 C CNN
F 2 "" H 7200 1900 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5EBF3C64
P 2150 7650
F 0 "#PWR016" H 2150 7500 50  0001 C CNN
F 1 "+5V" H 2165 7823 50  0000 C CNN
F 2 "" H 2150 7650 50  0001 C CNN
F 3 "" H 2150 7650 50  0001 C CNN
	1    2150 7650
	1    0    0    -1  
$EndComp
$Comp
L ucc2946:UCC2946 U4
U 1 1 5EBF54C4
P 12100 7300
F 0 "U4" H 12125 7315 50  0000 C CNN
F 1 "UCC2946" H 12125 7224 50  0000 C CNN
F 2 "" H 12100 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ucc2946.pdf?HQS=TI-null-null-mousermode-df-pf-null-wwe&ts=1589445312049" H 12100 7300 50  0001 C CNN
	1    12100 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5EBFD620
P 11000 7600
F 0 "R9" H 11070 7646 50  0000 L CNN
F 1 "47k" H 11070 7555 50  0000 L CNN
F 2 "" V 10930 7600 50  0001 C CNN
F 3 "~" H 11000 7600 50  0001 C CNN
	1    11000 7600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5EBFDC21
P 11400 7500
F 0 "#PWR022" H 11400 7250 50  0001 C CNN
F 1 "GND" H 11405 7327 50  0000 C CNN
F 2 "" H 11400 7500 50  0001 C CNN
F 3 "" H 11400 7500 50  0001 C CNN
	1    11400 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5EC012C0
P 11000 7400
F 0 "#PWR020" H 11000 7250 50  0001 C CNN
F 1 "+5V" H 11015 7573 50  0000 C CNN
F 2 "" H 11000 7400 50  0001 C CNN
F 3 "" H 11000 7400 50  0001 C CNN
	1    11000 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11600 7750 11000 7750
Wire Wire Line
	11000 7400 11000 7450
Wire Wire Line
	13000 6550 13000 7750
Wire Wire Line
	13000 7750 12650 7750
$Comp
L power:+5V #PWR023
U 1 1 5EC0CB26
P 12650 7450
F 0 "#PWR023" H 12650 7300 50  0001 C CNN
F 1 "+5V" H 12665 7623 50  0000 C CNN
F 2 "" H 12650 7450 50  0001 C CNN
F 3 "" H 12650 7450 50  0001 C CNN
	1    12650 7450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12650 7450 12650 7550
Wire Wire Line
	11300 8200 11300 8150
Wire Wire Line
	11300 8150 11600 8150
NoConn ~ 11600 7950
$Comp
L Device:C C3
U 1 1 5EC1C0DD
P 12850 8450
F 0 "C3" H 12965 8496 50  0000 L CNN
F 1 "3n3" H 12965 8405 50  0000 L CNN
F 2 "" H 12888 8300 50  0001 C CNN
F 3 "~" H 12850 8450 50  0001 C CNN
	1    12850 8450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5EC1C628
P 12850 8700
F 0 "#PWR026" H 12850 8450 50  0001 C CNN
F 1 "GND" H 12855 8527 50  0000 C CNN
F 2 "" H 12850 8700 50  0001 C CNN
F 3 "" H 12850 8700 50  0001 C CNN
	1    12850 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 8700 12850 8600
Wire Wire Line
	12850 8300 12850 7950
Wire Wire Line
	12850 7950 12650 7950
Text Notes 12950 8700 0    50   ~ 0
The watchdog period T_WP (ms) = 25 x C_WP (nF).\nSo, with C=330nF the period is a bit more than 8s.
$Comp
L Device:C C5
U 1 1 5EC24D48
P 14700 5500
F 0 "C5" H 14815 5546 50  0000 L CNN
F 1 "100n" H 14815 5455 50  0000 L CNN
F 2 "" H 14738 5350 50  0001 C CNN
F 3 "~" H 14700 5500 50  0001 C CNN
	1    14700 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 5EC258AE
P 14700 5250
F 0 "#PWR031" H 14700 5100 50  0001 C CNN
F 1 "+5V" H 14715 5423 50  0000 C CNN
F 2 "" H 14700 5250 50  0001 C CNN
F 3 "" H 14700 5250 50  0001 C CNN
	1    14700 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5EC25CA3
P 14700 5750
F 0 "#PWR032" H 14700 5500 50  0001 C CNN
F 1 "GND" H 14705 5577 50  0000 C CNN
F 2 "" H 14700 5750 50  0001 C CNN
F 3 "" H 14700 5750 50  0001 C CNN
	1    14700 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14700 5650 14700 5750
Wire Wire Line
	14700 5250 14700 5350
$Comp
L Device:C C4
U 1 1 5EC37847
P 15250 5500
F 0 "C4" H 15365 5546 50  0000 L CNN
F 1 "100n" H 15365 5455 50  0000 L CNN
F 2 "" H 15288 5350 50  0001 C CNN
F 3 "~" H 15250 5500 50  0001 C CNN
	1    15250 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5EC37851
P 15250 5250
F 0 "#PWR029" H 15250 5100 50  0001 C CNN
F 1 "+5V" H 15265 5423 50  0000 C CNN
F 2 "" H 15250 5250 50  0001 C CNN
F 3 "" H 15250 5250 50  0001 C CNN
	1    15250 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5EC3785B
P 15250 5750
F 0 "#PWR030" H 15250 5500 50  0001 C CNN
F 1 "GND" H 15255 5577 50  0000 C CNN
F 2 "" H 15250 5750 50  0001 C CNN
F 3 "" H 15250 5750 50  0001 C CNN
	1    15250 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15250 5650 15250 5750
Wire Wire Line
	15250 5250 15250 5350
Text GLabel 1000 850  0    50   Input ~ 0
+5V
Text GLabel 1000 1100 0    50   Input ~ 0
GND
Text GLabel 2200 7300 0    50   Input ~ 0
INTERLOCKpin
Text GLabel 4550 1300 1    50   Input ~ 0
SERVERFAILpin
Text GLabel 7200 4400 0    50   Input ~ 0
NTCpin
Text GLabel 4450 4400 0    50   Input ~ 0
ONE_WIRE_BUS
Text GLabel 13650 2600 0    50   Input ~ 0
WATCHDOGpin
Text GLabel 1850 6200 0    50   Input ~ 0
RELAYpin
Text GLabel 2900 10300 2    50   Input ~ 0
USRPpin
Text GLabel 3050 8150 2    50   Input ~ 0
RESET
Wire Wire Line
	1250 850  1000 850 
Wire Wire Line
	1250 1100 1000 1100
$Comp
L Device:LED D2
U 1 1 5EC516A4
P 4550 1900
F 0 "D2" H 4543 1645 50  0000 C CNN
F 1 "RED LED" H 4543 1736 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "~" H 4550 1900 50  0001 C CNN
	1    4550 1900
	0    1    -1   0   
$EndComp
Wire Wire Line
	7500 4300 7500 4400
Wire Wire Line
	7200 4400 7500 4400
Connection ~ 7500 4400
Wire Wire Line
	7500 4400 7500 4500
Wire Wire Line
	4450 4400 4600 4400
Wire Wire Line
	4600 3950 4600 4000
Wire Wire Line
	4600 4300 4600 4400
Connection ~ 4600 4400
Wire Wire Line
	4600 4400 4750 4400
$Comp
L Device:R R1
U 1 1 5EC838EB
P 3250 1500
F 0 "R1" V 3043 1500 50  0000 C CNN
F 1 "270" V 3134 1500 50  0000 C CNN
F 2 "" V 3180 1500 50  0001 C CNN
F 3 "~" H 3250 1500 50  0001 C CNN
	1    3250 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5EC83ECB
P 3250 1900
F 0 "D1" H 3243 1645 50  0000 C CNN
F 1 "GREEN LED" H 3243 1736 50  0000 C CNN
F 2 "" H 3250 1900 50  0001 C CNN
F 3 "~" H 3250 1900 50  0001 C CNN
	1    3250 1900
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EC843E1
P 3250 2150
F 0 "#PWR01" H 3250 1900 50  0001 C CNN
F 1 "GND" H 3255 1977 50  0000 C CNN
F 2 "" H 3250 2150 50  0001 C CNN
F 3 "" H 3250 2150 50  0001 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1650 3250 1750
Wire Wire Line
	3250 2050 3250 2150
$Comp
L power:GND #PWR04
U 1 1 5EC95F9F
P 4550 2150
F 0 "#PWR04" H 4550 1900 50  0001 C CNN
F 1 "GND" H 4555 1977 50  0000 C CNN
F 2 "" H 4550 2150 50  0001 C CNN
F 3 "" H 4550 2150 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1300 4550 1400
Wire Wire Line
	4550 1700 4550 1750
Wire Wire Line
	4550 2050 4550 2150
Wire Wire Line
	12650 8150 13350 8150
Wire Wire Line
	2900 10300 2800 10300
Wire Wire Line
	11600 7550 11600 7500
Wire Wire Line
	11600 7500 11400 7500
Wire Wire Line
	2400 10200 2300 10200
Wire Wire Line
	2350 6200 1850 6200
Wire Notes Line
	2550 6450 2550 6950
$Comp
L pvn012:PVN012 U3
U 1 1 5ED7D5ED
P 4350 6100
F 0 "U3" H 4350 6165 50  0000 C CNN
F 1 "PVN012" H 4350 6074 50  0000 C CNN
F 2 "" H 4350 6100 50  0001 C CNN
F 3 "https://no.mouser.com/datasheet/2/196/Infineon-PVN012-DataSheet-v01_00-EN-1733022.pdf" H 4350 6100 50  0001 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5ED7E29F
P 3400 6550
F 0 "#PWR018" H 3400 6300 50  0001 C CNN
F 1 "GND" H 3405 6377 50  0000 C CNN
F 2 "" H 3400 6550 50  0001 C CNN
F 3 "" H 3400 6550 50  0001 C CNN
	1    3400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6550 3650 6550
Wire Wire Line
	3250 6300 3650 6300
Wire Wire Line
	5050 6300 5550 6300
Text GLabel 5550 6300 2    50   Input ~ 0
VIN+12V
Text GLabel 5550 6550 2    50   Input ~ 0
VOUT+12V
Wire Wire Line
	2200 7300 2400 7300
Wire Wire Line
	2150 7650 2300 7650
Wire Wire Line
	2300 7650 2300 7500
Wire Wire Line
	2300 7500 2400 7500
Text GLabel 15300 3150 2    50   Input ~ 0
nRESET
Wire Wire Line
	15300 3150 15150 3150
Text GLabel 2000 8050 0    50   Input ~ 0
nRESET
Wire Wire Line
	2000 8050 2400 8050
Wire Notes Line
	2600 7600 2600 7800
$Comp
L Device:LED D?
U 1 1 5ED7D32E
P 5900 1900
F 0 "D?" H 5893 2116 50  0000 C CNN
F 1 "GREEN LED" H 5893 2025 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "~" H 5900 1900 50  0001 C CNN
	1    5900 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED7D7F1
P 5900 2150
F 0 "#PWR?" H 5900 1900 50  0001 C CNN
F 1 "GND" H 5905 1977 50  0000 C CNN
F 2 "" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED7DCA5
P 5900 1550
F 0 "R?" V 5693 1550 50  0000 C CNN
F 1 "820" V 5784 1550 50  0000 C CNN
F 2 "" V 5830 1550 50  0001 C CNN
F 3 "~" H 5900 1550 50  0001 C CNN
	1    5900 1550
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 1750 5900 1700
Wire Wire Line
	5900 2150 5900 2050
Text Notes 6150 2600 2    50   Italic 0
PA power on
Text Notes 11900 6250 2    50   Italic 0
USRP alive
Text Notes 10350 2600 2    50   Italic 0
Watchdog timeout
Wire Wire Line
	3250 1200 3250 1350
Text Notes 3600 2600 2    50   Italic 0
Interlock alive
Text Notes 7350 2600 2    50   Italic 0
Interlock on
Text Notes 4800 2600 2    50   Italic 0
Connection fail
Wire Wire Line
	5050 6550 5550 6550
Text GLabel 5900 1200 1    50   Input ~ 0
VOUT+12V
Wire Wire Line
	5900 1200 5900 1400
$Comp
L power:GND #PWR?
U 1 1 5EE17958
P 7200 2150
F 0 "#PWR?" H 7200 1900 50  0001 C CNN
F 1 "GND" H 7205 1977 50  0000 C CNN
F 2 "" H 7200 2150 50  0001 C CNN
F 3 "" H 7200 2150 50  0001 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
Text GLabel 3050 7400 2    50   Input Italic 0
INTERLOCK_ON
Text GLabel 7200 1250 1    50   Input Italic 0
INTERLOCK_ON
Wire Wire Line
	2800 7400 3050 7400
Wire Wire Line
	7200 1250 7200 1350
Wire Wire Line
	7200 1650 7200 1750
Wire Wire Line
	7200 2050 7200 2150
Text GLabel 8350 2250 2    50   Input Italic 0
DISABLE_USRP_INTERLOCK
Text GLabel 2300 10050 0    50   Input Italic 0
DISABLE_USRP_INTERLOCK
Wire Wire Line
	2300 10050 2300 10200
Wire Wire Line
	8350 2250 8250 2250
Wire Wire Line
	8250 2250 8250 2050
Text Notes 8700 2600 2    50   Italic 0
USRP watchdog bypass
Wire Notes Line
	2450 2950 2450 800 
Text GLabel 10000 2250 2    50   Input Italic 0
WDO
Text GLabel 14450 3300 2    50   Input Italic 0
WDO
Wire Wire Line
	9950 2000 9950 2250
Wire Wire Line
	9950 2250 10000 2250
Wire Notes Line
	2450 2950 10850 2950
Wire Notes Line
	10850 2950 10850 650 
Wire Wire Line
	1600 10400 1750 10400
Wire Wire Line
	2050 10400 2200 10400
Text GLabel 13350 8150 2    50   Input Italic 0
USRP_WDO
Wire Wire Line
	2100 10800 2200 10800
Wire Wire Line
	2200 10800 2200 10400
Connection ~ 2200 10400
Wire Wire Line
	2200 10400 2400 10400
Text GLabel 10300 3950 1    50   Input ~ 0
VOUT+12V
$Comp
L Device:R R?
U 1 1 5EDF7D7C
P 10300 4250
F 0 "R?" H 10370 4296 50  0000 L CNN
F 1 "33k" H 10370 4205 50  0000 L CNN
F 2 "" V 10230 4250 50  0001 C CNN
F 3 "~" H 10300 4250 50  0001 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EDF82B4
P 10300 4750
F 0 "R?" H 10370 4796 50  0000 L CNN
F 1 "10k" H 10370 4705 50  0000 L CNN
F 2 "" V 10230 4750 50  0001 C CNN
F 3 "~" H 10300 4750 50  0001 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EDF861D
P 10300 5000
F 0 "#PWR?" H 10300 4750 50  0001 C CNN
F 1 "GND" H 10305 4827 50  0000 C CNN
F 2 "" H 10300 5000 50  0001 C CNN
F 3 "" H 10300 5000 50  0001 C CNN
	1    10300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5000 10300 4900
Wire Wire Line
	10300 4100 10300 3950
Wire Wire Line
	10300 4600 10300 4450
Text GLabel 9950 4450 0    50   Input ~ 0
VMONpin
Wire Wire Line
	9950 4450 10300 4450
Connection ~ 10300 4450
Wire Wire Line
	10300 4450 10300 4400
Text Notes 9650 5350 0    50   ~ 0
Measure the PA power supply voltage
Text Notes 6850 4300 0    50   ~ 0
Arduino A0
Text Notes 9550 4350 0    50   ~ 0
Arduino A1
Text GLabel 3250 1200 1    50   Input ~ 0
TOGGLEpin
$EndSCHEMATC
