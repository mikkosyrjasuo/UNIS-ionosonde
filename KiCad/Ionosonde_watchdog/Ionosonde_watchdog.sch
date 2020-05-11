EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:TIP121 Q?
U 1 1 5EB939F1
P 3550 7050
F 0 "Q?" H 3757 7096 50  0000 L CNN
F 1 "TIP121" H 3757 7005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3750 6975 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 3550 7050 50  0001 L CNN
	1    3550 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB95958
P 3650 7400
F 0 "#PWR?" H 3650 7150 50  0001 C CNN
F 1 "GND" H 3655 7227 50  0000 C CNN
F 2 "" H 3650 7400 50  0001 C CNN
F 3 "" H 3650 7400 50  0001 C CNN
	1    3650 7400
	1    0    0    -1  
$EndComp
$Comp
L Relay:SILxx-1Cxx-51x K?
U 1 1 5EB961B5
P 3850 6450
F 0 "K?" H 4280 6496 50  0000 L CNN
F 1 "SILxx-1Cxx-51x" H 4280 6405 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_StandexMeder_SIL_Form1C" H 4300 6400 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_SIL.pdf" H 3850 6450 50  0001 C CNN
	1    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5EB97D7F
P 3650 6000
F 0 "#PWR?" H 3650 5850 50  0001 C CNN
F 1 "+12V" H 3665 6173 50  0000 C CNN
F 2 "" H 3650 6000 50  0001 C CNN
F 3 "" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB9862C
P 3000 7050
F 0 "R?" V 2793 7050 50  0000 C CNN
F 1 "1k" V 2884 7050 50  0000 C CNN
F 2 "" V 2930 7050 50  0001 C CNN
F 3 "~" H 3000 7050 50  0001 C CNN
	1    3000 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 7050 3350 7050
Wire Wire Line
	3650 7400 3650 7250
Wire Wire Line
	3650 6850 3650 6750
Wire Wire Line
	3650 6150 3650 6000
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB99C52
P 1250 2300
F 0 "J?" H 1168 2075 50  0000 C CNN
F 1 "INTERLOCKpin" H 1168 2166 50  0000 C CNN
F 2 "" H 1250 2300 50  0001 C CNN
F 3 "~" H 1250 2300 50  0001 C CNN
	1    1250 2300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9AD57
P 1250 3050
F 0 "J?" H 1168 2825 50  0000 C CNN
F 1 "SERVERFAILpin" H 1168 2916 50  0000 C CNN
F 2 "" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9B20E
P 1250 3800
F 0 "J?" H 1168 3575 50  0000 C CNN
F 1 "TXONpin" H 1168 3666 50  0000 C CNN
F 2 "" H 1250 3800 50  0001 C CNN
F 3 "~" H 1250 3800 50  0001 C CNN
	1    1250 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9B5BC
P 1250 7050
F 0 "J?" H 1168 6825 50  0000 C CNN
F 1 "RELAYpin" H 1168 6916 50  0000 C CNN
F 2 "" H 1250 7050 50  0001 C CNN
F 3 "~" H 1250 7050 50  0001 C CNN
	1    1250 7050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9B98E
P 10750 2300
F 0 "J?" H 10668 2075 50  0000 C CNN
F 1 "USRPpin" H 10668 2166 50  0000 C CNN
F 2 "" H 10750 2300 50  0001 C CNN
F 3 "~" H 10750 2300 50  0001 C CNN
	1    10750 2300
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9BC99
P 1250 4600
F 0 "J?" H 1168 4375 50  0000 C CNN
F 1 "NTCpin" H 1168 4466 50  0000 C CNN
F 2 "" H 1250 4600 50  0001 C CNN
F 3 "~" H 1250 4600 50  0001 C CNN
	1    1250 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EB9BF47
P 1250 5600
F 0 "J?" H 1168 5375 50  0000 C CNN
F 1 "ONE_WIRE_BUS" H 1168 5466 50  0000 C CNN
F 2 "" H 1250 5600 50  0001 C CNN
F 3 "~" H 1250 5600 50  0001 C CNN
	1    1250 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB9C259
P 2000 2300
F 0 "R?" V 1793 2300 50  0000 C CNN
F 1 "270" V 1884 2300 50  0000 C CNN
F 2 "" V 1930 2300 50  0001 C CNN
F 3 "~" H 2000 2300 50  0001 C CNN
	1    2000 2300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5EB9C800
P 2450 2300
F 0 "D?" H 2443 2045 50  0000 C CNN
F 1 "LED" H 2443 2136 50  0000 C CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "~" H 2450 2300 50  0001 C CNN
	1    2450 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB9D219
P 2800 2300
F 0 "#PWR?" H 2800 2050 50  0001 C CNN
F 1 "GND" H 2805 2127 50  0000 C CNN
F 2 "" H 2800 2300 50  0001 C CNN
F 3 "" H 2800 2300 50  0001 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2300 1850 2300
Wire Wire Line
	2150 2300 2300 2300
Wire Wire Line
	2600 2300 2800 2300
$Comp
L Device:R R?
U 1 1 5EB9EA76
P 2000 3050
F 0 "R?" V 1793 3050 50  0000 C CNN
F 1 "270" V 1884 3050 50  0000 C CNN
F 2 "" V 1930 3050 50  0001 C CNN
F 3 "~" H 2000 3050 50  0001 C CNN
	1    2000 3050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5EB9EDAA
P 2450 3050
F 0 "D?" H 2443 2795 50  0000 C CNN
F 1 "LED" H 2443 2886 50  0000 C CNN
F 2 "" H 2450 3050 50  0001 C CNN
F 3 "~" H 2450 3050 50  0001 C CNN
	1    2450 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB9F4AD
P 2800 3050
F 0 "#PWR?" H 2800 2800 50  0001 C CNN
F 1 "GND" H 2805 2877 50  0000 C CNN
F 2 "" H 2800 3050 50  0001 C CNN
F 3 "" H 2800 3050 50  0001 C CNN
	1    2800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3050 1850 3050
Wire Wire Line
	2150 3050 2300 3050
Wire Wire Line
	2600 3050 2800 3050
$Comp
L Device:R R?
U 1 1 5EB9FDE9
P 2000 3800
F 0 "R?" V 1793 3800 50  0000 C CNN
F 1 "270" V 1884 3800 50  0000 C CNN
F 2 "" V 1930 3800 50  0001 C CNN
F 3 "~" H 2000 3800 50  0001 C CNN
	1    2000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5EBA0256
P 2450 3800
F 0 "D?" H 2443 3545 50  0000 C CNN
F 1 "LED" H 2443 3636 50  0000 C CNN
F 2 "" H 2450 3800 50  0001 C CNN
F 3 "~" H 2450 3800 50  0001 C CNN
	1    2450 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBA0700
P 2800 3800
F 0 "#PWR?" H 2800 3550 50  0001 C CNN
F 1 "GND" H 2805 3627 50  0000 C CNN
F 2 "" H 2800 3800 50  0001 C CNN
F 3 "" H 2800 3800 50  0001 C CNN
	1    2800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3800 2600 3800
Wire Wire Line
	2300 3800 2150 3800
Wire Wire Line
	1850 3800 1450 3800
$Comp
L Sensor_Temperature:DS18B20-PAR U?
U 1 1 5EBA3719
P 2600 5600
F 0 "U?" H 2370 5589 50  0000 R CNN
F 1 "DS18B20-PAR" H 2370 5498 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1600 5350 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20-PAR.pdf" H 2450 5850 50  0001 C CNN
	1    2600 5600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EBA762F
P 1250 1700
F 0 "J?" H 1168 1475 50  0000 C CNN
F 1 "GND" H 1168 1566 50  0000 C CNN
F 2 "" H 1250 1700 50  0001 C CNN
F 3 "~" H 1250 1700 50  0001 C CNN
	1    1250 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBA7B87
P 1850 1700
F 0 "#PWR?" H 1850 1450 50  0001 C CNN
F 1 "GND" H 1855 1527 50  0000 C CNN
F 2 "" H 1850 1700 50  0001 C CNN
F 3 "" H 1850 1700 50  0001 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBA8777
P 2600 6000
F 0 "#PWR?" H 2600 5750 50  0001 C CNN
F 1 "GND" H 2605 5827 50  0000 C CNN
F 2 "" H 2600 6000 50  0001 C CNN
F 3 "" H 2600 6000 50  0001 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6000 2600 5900
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EBABA8B
P 1250 1300
F 0 "J?" H 1168 1075 50  0000 C CNN
F 1 "5V" H 1168 1166 50  0000 C CNN
F 2 "" H 1250 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBAC07F
P 1850 1250
F 0 "#PWR?" H 1850 1100 50  0001 C CNN
F 1 "+5V" H 1865 1423 50  0000 C CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBAD1A8
P 2050 5400
F 0 "R?" H 2120 5446 50  0000 L CNN
F 1 "4k7" H 2120 5355 50  0000 L CNN
F 2 "" V 1980 5400 50  0001 C CNN
F 3 "~" H 2050 5400 50  0001 C CNN
	1    2050 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBAD921
P 2050 5200
F 0 "#PWR?" H 2050 5050 50  0001 C CNN
F 1 "+5V" H 2065 5373 50  0000 C CNN
F 2 "" H 2050 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5200 2050 5250
Wire Wire Line
	2050 5550 2050 5600
Connection ~ 2050 5600
Wire Wire Line
	2050 5600 2300 5600
$Comp
L Device:Thermistor_NTC TH?
U 1 1 5EBAF710
P 2500 4850
F 0 "TH?" H 2598 4896 50  0000 L CNN
F 1 "pt100" H 2598 4805 50  0000 L CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "~" H 2500 4900 50  0001 C CNN
	1    2500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBB0CA3
P 2500 4350
F 0 "R?" H 2570 4396 50  0000 L CNN
F 1 "10k" H 2570 4305 50  0000 L CNN
F 2 "" V 2430 4350 50  0001 C CNN
F 3 "~" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4600 2500 4500
Wire Wire Line
	2500 4700 2500 4600
Connection ~ 2500 4600
$Comp
L power:GND #PWR?
U 1 1 5EBB2259
P 2500 5050
F 0 "#PWR?" H 2500 4800 50  0001 C CNN
F 1 "GND" H 2505 4877 50  0000 C CNN
F 2 "" H 2500 5050 50  0001 C CNN
F 3 "" H 2500 5050 50  0001 C CNN
	1    2500 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBB257F
P 2500 4150
F 0 "#PWR?" H 2500 4000 50  0001 C CNN
F 1 "+5V" H 2515 4323 50  0000 C CNN
F 2 "" H 2500 4150 50  0001 C CNN
F 3 "" H 2500 4150 50  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4150 2500 4200
Wire Wire Line
	2500 5000 2500 5050
$Comp
L Isolator:LTV-356T U?
U 1 1 5EBB3C6B
P 6350 1300
F 0 "U?" H 6350 1625 50  0000 C CNN
F 1 "LTV-356T" H 6350 1534 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 6150 1100 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-010/S_110_LTV-356T%2020140520.pdf" H 6350 1300 50  0001 L CNN
	1    6350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBB59B6
P 6750 1500
F 0 "#PWR?" H 6750 1250 50  0001 C CNN
F 1 "GND" H 6755 1327 50  0000 C CNN
F 2 "" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0001 C CNN
	1    6750 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 1500 6750 1400
Wire Wire Line
	6750 1400 6650 1400
Wire Wire Line
	6650 1200 6800 1200
Text Notes 1000 950  0    50   Italic 0
Arduino Ethernet
Wire Wire Line
	1850 1300 1850 1250
Wire Wire Line
	1450 1300 1850 1300
$Comp
L Device:R R?
U 1 1 5EBB9C1E
P 6800 950
F 0 "R?" H 6870 996 50  0000 L CNN
F 1 "47k" H 6870 905 50  0000 L CNN
F 2 "" V 6730 950 50  0001 C CNN
F 3 "~" H 6800 950 50  0001 C CNN
	1    6800 950 
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBB9FF3
P 6800 750
F 0 "#PWR?" H 6800 600 50  0001 C CNN
F 1 "+5V" H 6815 923 50  0000 C CNN
F 2 "" H 6800 750 50  0001 C CNN
F 3 "" H 6800 750 50  0001 C CNN
	1    6800 750 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 750  6800 800 
Wire Wire Line
	6800 1100 6800 1200
$Comp
L Device:LED D?
U 1 1 5EBBB17D
P 5700 1200
F 0 "D?" H 5693 1416 50  0000 C CNN
F 1 "LED" H 5693 1325 50  0000 C CNN
F 2 "" H 5700 1200 50  0001 C CNN
F 3 "~" H 5700 1200 50  0001 C CNN
	1    5700 1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBBEA9
P 5250 1200
F 0 "R?" V 5043 1200 50  0000 C CNN
F 1 "33" V 5134 1200 50  0000 C CNN
F 2 "" V 5180 1200 50  0001 C CNN
F 3 "~" H 5250 1200 50  0001 C CNN
	1    5250 1200
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EBBC3A9
P 4750 1200
F 0 "J?" H 4830 1192 50  0000 L CNN
F 1 "USRP GPIO pins" H 4830 1101 50  0000 L CNN
F 2 "" H 4750 1200 50  0001 C CNN
F 3 "~" H 4750 1200 50  0001 C CNN
	1    4750 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 1200 5100 1200
Wire Wire Line
	5400 1200 5550 1200
Wire Wire Line
	5850 1200 6050 1200
Wire Wire Line
	6050 1400 4950 1400
Wire Wire Line
	4950 1400 4950 1300
Wire Notes Line
	1700 850  850  850 
Wire Notes Line
	850  850  850  7450
Wire Wire Line
	1450 1700 1850 1700
Wire Notes Line
	1700 850  1700 7450
Wire Notes Line
	1700 7450 850  7450
Wire Wire Line
	1450 4600 2500 4600
Wire Wire Line
	1450 5600 2050 5600
Wire Wire Line
	1450 7050 2850 7050
$Comp
L Switch:SW_SPDT SW?
U 1 1 5EBED583
P 10050 5050
F 0 "SW?" H 10050 5335 50  0000 C CNN
F 1 "SW_SPDT" H 10050 5244 50  0000 C CNN
F 2 "" H 10050 5050 50  0001 C CNN
F 3 "~" H 10050 5050 50  0001 C CNN
	1    10050 5050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5EBEDFBD
P 6000 7100
F 0 "J?" H 6080 7092 50  0000 L CNN
F 1 "USB to 5V serial" H 6080 7001 50  0000 L CNN
F 2 "" H 6000 7100 50  0001 C CNN
F 3 "~" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
Text GLabel 5750 6900 0    50   Input ~ 0
FTDI-GND
Text GLabel 5750 7000 0    50   Input ~ 0
FTDI-CTS
Text GLabel 5750 7100 0    50   Input ~ 0
FTDI-VCC
Text GLabel 5750 7200 0    50   Input ~ 0
FTDI-TxD
Text GLabel 5750 7300 0    50   Input ~ 0
FTDI-RxD
Text GLabel 5750 7400 0    50   Input ~ 0
FTDI-RTS
Wire Wire Line
	5800 6900 5750 6900
Wire Wire Line
	5800 7000 5750 7000
Wire Wire Line
	5800 7100 5750 7100
Wire Wire Line
	5800 7200 5750 7200
Wire Wire Line
	5800 7300 5750 7300
Wire Wire Line
	5800 7400 5750 7400
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EBF5DB8
P 1250 6300
F 0 "J?" H 1168 6075 50  0000 C CNN
F 1 "WATCHDOGpin" H 1168 6166 50  0000 C CNN
F 2 "" H 1250 6300 50  0001 C CNN
F 3 "~" H 1250 6300 50  0001 C CNN
	1    1250 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 6300 1450 6300
Text GLabel 1900 6300 2    50   Input ~ 0
WDI
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5EBF75DA
P 4700 5850
F 0 "J?" H 4780 5842 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4780 5751 50  0000 L CNN
F 2 "" H 4700 5850 50  0001 C CNN
F 3 "~" H 4700 5850 50  0001 C CNN
	1    4700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5950 4500 6850
Wire Wire Line
	4500 6850 4050 6850
Wire Wire Line
	4050 6850 4050 6750
Wire Wire Line
	4150 6150 4150 5850
Wire Wire Line
	4150 5850 4500 5850
Text Notes 4950 5750 2    50   Italic 0
RF PA power switch
Text Notes 3750 4650 2    50   Italic 0
Attached to RF PA heat sink
Text Notes 3800 5500 2    50   Italic 0
For ambient temperature
Text Notes 4050 950  0    50   Italic 0
Heartbeat from the USRP
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5EBFE332
P 10700 5050
F 0 "J?" H 10618 4825 50  0000 C CNN
F 1 "RESET" H 10618 4916 50  0000 C CNN
F 2 "" H 10700 5050 50  0001 C CNN
F 3 "~" H 10700 5050 50  0001 C CNN
	1    10700 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	9550 5150 9850 5150
Wire Wire Line
	9750 4950 9850 4950
Wire Wire Line
	9750 4600 9750 4950
Wire Wire Line
	9050 4000 9050 3900
Wire Wire Line
	9050 3600 9050 3500
Wire Wire Line
	9050 4750 9050 4300
Wire Wire Line
	8200 4750 9050 4750
$Comp
L Device:LED D?
U 1 1 5EBC2CC3
P 9050 4150
F 0 "D?" H 9043 4366 50  0000 C CNN
F 1 "LED" H 9043 4275 50  0000 C CNN
F 2 "" H 9050 4150 50  0001 C CNN
F 3 "~" H 9050 4150 50  0001 C CNN
	1    9050 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EBC29E7
P 9050 3750
F 0 "R?" V 8843 3750 50  0000 C CNN
F 1 "270" V 8934 3750 50  0000 C CNN
F 2 "" V 8980 3750 50  0001 C CNN
F 3 "~" H 9050 3750 50  0001 C CNN
	1    9050 3750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBC25F3
P 9050 3500
F 0 "#PWR?" H 9050 3350 50  0001 C CNN
F 1 "+5V" H 9065 3673 50  0000 C CNN
F 2 "" H 9050 3500 50  0001 C CNN
F 3 "" H 9050 3500 50  0001 C CNN
	1    9050 3500
	1    0    0    -1  
$EndComp
Connection ~ 8400 4050
Wire Wire Line
	8400 5200 8400 4050
Wire Wire Line
	8200 5200 8400 5200
Wire Wire Line
	6250 5750 6250 5650
Wire Wire Line
	6750 5500 6750 5750
$Comp
L power:GND #PWR?
U 1 1 5EBBA7F2
P 6250 5750
F 0 "#PWR?" H 6250 5500 50  0001 C CNN
F 1 "GND" H 6255 5577 50  0000 C CNN
F 2 "" H 6250 5750 50  0001 C CNN
F 3 "" H 6250 5750 50  0001 C CNN
	1    6250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5350 6850 5350
Wire Wire Line
	6850 5500 6750 5500
Wire Wire Line
	8300 5500 8300 5600
Wire Wire Line
	8200 5500 8300 5500
$Comp
L power:GND #PWR?
U 1 1 5EBB5301
P 8300 5600
F 0 "#PWR?" H 8300 5350 50  0001 C CNN
F 1 "GND" H 8305 5427 50  0000 C CNN
F 2 "" H 8300 5600 50  0001 C CNN
F 3 "" H 8300 5600 50  0001 C CNN
	1    8300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBB4993
P 6750 5750
F 0 "#PWR?" H 6750 5500 50  0001 C CNN
F 1 "GND" H 6755 5577 50  0000 C CNN
F 2 "" H 6750 5750 50  0001 C CNN
F 3 "" H 6750 5750 50  0001 C CNN
	1    6750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4050 8400 4050
Text GLabel 8250 4050 0    50   Input ~ 0
WDI
Wire Wire Line
	8400 3900 8400 4050
Wire Wire Line
	8400 3500 8400 3600
$Comp
L power:+5V #PWR?
U 1 1 5EBAD2A2
P 8400 3500
F 0 "#PWR?" H 8400 3350 50  0001 C CNN
F 1 "+5V" H 8415 3673 50  0000 C CNN
F 2 "" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBACAE0
P 8400 3750
F 0 "R?" V 8193 3750 50  0000 C CNN
F 1 "33" V 8284 3750 50  0000 C CNN
F 2 "" V 8330 3750 50  0001 C CNN
F 3 "~" H 8400 3750 50  0001 C CNN
	1    8400 3750
	-1   0    0    1   
$EndComp
NoConn ~ 6850 5200
NoConn ~ 8200 5350
NoConn ~ 8200 5050
NoConn ~ 8200 4450
NoConn ~ 6850 5050
Connection ~ 5800 4900
Wire Wire Line
	5800 4450 5800 4900
Wire Wire Line
	6850 4450 5800 4450
Wire Wire Line
	6750 4750 6850 4750
Connection ~ 6750 4750
Wire Wire Line
	6750 4600 6750 4750
Wire Wire Line
	6850 4600 6750 4600
Wire Wire Line
	6450 4750 6750 4750
$Comp
L power:+5V #PWR?
U 1 1 5EBA02C1
P 6450 4750
F 0 "#PWR?" H 6450 4600 50  0001 C CNN
F 1 "+5V" H 6465 4923 50  0000 C CNN
F 2 "" H 6450 4750 50  0001 C CNN
F 3 "" H 6450 4750 50  0001 C CNN
	1    6450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4900 5800 4900
$Comp
L power:GND #PWR?
U 1 1 5EB9E48D
P 5800 4900
F 0 "#PWR?" H 5800 4650 50  0001 C CNN
F 1 "GND" H 5805 4727 50  0000 C CNN
F 2 "" H 5800 4900 50  0001 C CNN
F 3 "" H 5800 4900 50  0001 C CNN
	1    5800 4900
	1    0    0    -1  
$EndComp
$Comp
L Ionosonde_watchdog:MAX693 U?
U 1 1 5EB978A2
P 7500 4300
F 0 "U?" H 7525 4415 50  0000 C CNN
F 1 "MAX693" H 7525 4324 50  0000 C CNN
F 2 "" H 7500 4300 50  0001 C CNN
F 3 "" H 7500 4300 50  0001 C CNN
	1    7500 4300
	1    0    0    -1  
$EndComp
Text GLabel 9550 5150 0    50   Input ~ 0
FTDI-RTS
$Comp
L Device:C C?
U 1 1 5EBD44E3
P 6250 5500
F 0 "C?" H 6365 5546 50  0000 L CNN
F 1 "470p" H 6365 5455 50  0000 L CNN
F 2 "" H 6288 5350 50  0001 C CNN
F 3 "~" H 6250 5500 50  0001 C CNN
	1    6250 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 1700 7850 1600
Wire Wire Line
	7850 1300 7850 1200
$Comp
L Device:LED D?
U 1 1 5EBFAE46
P 7850 1850
F 0 "D?" H 7843 2066 50  0000 C CNN
F 1 "LED" H 7843 1975 50  0000 C CNN
F 2 "" H 7850 1850 50  0001 C CNN
F 3 "~" H 7850 1850 50  0001 C CNN
	1    7850 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EBFAE4C
P 7850 1450
F 0 "R?" V 7643 1450 50  0000 C CNN
F 1 "270" V 7734 1450 50  0000 C CNN
F 2 "" V 7780 1450 50  0001 C CNN
F 3 "~" H 7850 1450 50  0001 C CNN
	1    7850 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBFAE52
P 7850 1200
F 0 "#PWR?" H 7850 1050 50  0001 C CNN
F 1 "+5V" H 7865 1373 50  0000 C CNN
F 2 "" H 7850 1200 50  0001 C CNN
F 3 "" H 7850 1200 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2750 7000 2750
Wire Wire Line
	4850 3300 4850 3200
Wire Wire Line
	5350 3050 5350 3300
$Comp
L power:GND #PWR?
U 1 1 5EBFAE5D
P 4850 3300
F 0 "#PWR?" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4855 3127 50  0000 C CNN
F 2 "" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2900 5450 2900
Wire Wire Line
	5450 3050 5350 3050
Wire Wire Line
	6900 3050 6900 3150
Wire Wire Line
	6800 3050 6900 3050
$Comp
L power:GND #PWR?
U 1 1 5EBFAE67
P 6900 3150
F 0 "#PWR?" H 6900 2900 50  0001 C CNN
F 1 "GND" H 6905 2977 50  0000 C CNN
F 2 "" H 6900 3150 50  0001 C CNN
F 3 "" H 6900 3150 50  0001 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBFAE6D
P 5350 3300
F 0 "#PWR?" H 5350 3050 50  0001 C CNN
F 1 "GND" H 5355 3127 50  0000 C CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
NoConn ~ 5450 2750
NoConn ~ 6800 2900
NoConn ~ 6800 2600
NoConn ~ 6800 2000
NoConn ~ 5450 2600
Connection ~ 4400 2450
Wire Wire Line
	4400 2000 4400 2450
Wire Wire Line
	5450 2000 4400 2000
Wire Wire Line
	5350 2300 5450 2300
Connection ~ 5350 2300
Wire Wire Line
	5350 2150 5350 2300
Wire Wire Line
	5450 2150 5350 2150
Wire Wire Line
	5050 2300 5350 2300
$Comp
L power:+5V #PWR?
U 1 1 5EBFAE90
P 5050 2300
F 0 "#PWR?" H 5050 2150 50  0001 C CNN
F 1 "+5V" H 5065 2473 50  0000 C CNN
F 2 "" H 5050 2300 50  0001 C CNN
F 3 "" H 5050 2300 50  0001 C CNN
	1    5050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2450 4400 2450
$Comp
L power:GND #PWR?
U 1 1 5EBFAE97
P 4400 2450
F 0 "#PWR?" H 4400 2200 50  0001 C CNN
F 1 "GND" H 4405 2277 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
$Comp
L Ionosonde_watchdog:MAX693 U?
U 1 1 5EBFAE9E
P 6100 1850
F 0 "U?" H 6125 1965 50  0000 C CNN
F 1 "MAX693" H 6125 1874 50  0000 C CNN
F 2 "" H 6100 1850 50  0001 C CNN
F 3 "" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EBFAEA5
P 4850 3050
F 0 "C?" H 4965 3096 50  0000 L CNN
F 1 "1n5" H 4965 3005 50  0000 L CNN
F 2 "" H 4888 2900 50  0001 C CNN
F 3 "~" H 4850 3050 50  0001 C CNN
	1    4850 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 2750 7000 1200
Wire Wire Line
	7000 1200 6800 1200
Connection ~ 6800 1200
Wire Wire Line
	6800 2300 7850 2300
Wire Wire Line
	7850 2000 7850 2300
Wire Notes Line
	5100 800  5100 1550
Wire Notes Line
	5100 1550 3850 1550
Wire Notes Line
	3850 1550 3850 800 
Wire Notes Line
	3850 800  5100 800 
Text Notes 10350 1900 0    50   Italic 0
Arduino Ethernet
$Comp
L Device:D D?
U 1 1 5EBD4D6D
P 9600 4600
F 0 "D?" V 9554 4679 50  0000 L CNN
F 1 "D" V 9645 4679 50  0000 L CNN
F 2 "" H 9600 4600 50  0001 C CNN
F 3 "~" H 9600 4600 50  0001 C CNN
	1    9600 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 4600 9450 4600
Connection ~ 7850 2300
Wire Wire Line
	7850 2300 10550 2300
Wire Wire Line
	10250 5050 10500 5050
Wire Notes Line
	11050 1750 11050 5400
Wire Notes Line
	11050 5400 10300 5400
Wire Notes Line
	10300 5400 10300 1750
Wire Notes Line
	10300 1750 11050 1750
Text Notes 6900 6200 0    50   ~ 0
With C=470pF, the watchdog periods are roughly\n- 16 seconds after reset\n- 4 seconds afterwards
Text Notes 4300 3900 0    50   ~ 0
With C=1.5nF, the watchdog periods are roughly\n- 51 seconds after reset\n- 6 seconds afterwards\nNOTE: this is not a good watchdog for the USRP!
$EndSCHEMATC
