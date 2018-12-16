EESchema Schematic File Version 4
LIBS:Kicad-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR01
U 1 1 580C1B61
P 3100 950
F 0 "#PWR01" H 3100 800 50  0001 C CNN
F 1 "+5V" H 3100 1090 50  0000 C CNN
F 2 "" H 3100 950 50  0000 C CNN
F 3 "" H 3100 950 50  0000 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  3100 1100
Wire Wire Line
	3100 1100 2900 1100
Wire Wire Line
	3100 1200 2900 1200
Connection ~ 3100 1100
$Comp
L power:GND #PWR02
U 1 1 580C1D11
P 3000 3150
F 0 "#PWR02" H 3000 2900 50  0001 C CNN
F 1 "GND" H 3000 3000 50  0000 C CNN
F 2 "" H 3000 3150 50  0000 C CNN
F 3 "" H 3000 3150 50  0000 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1300 3000 1700
Wire Wire Line
	3000 2700 2900 2700
Wire Wire Line
	3000 2500 2900 2500
Connection ~ 3000 2700
Wire Wire Line
	3000 2000 2900 2000
Connection ~ 3000 2500
Wire Wire Line
	3000 1700 2900 1700
Connection ~ 3000 2000
$Comp
L power:GND #PWR03
U 1 1 580C1E01
P 2300 3150
F 0 "#PWR03" H 2300 2900 50  0001 C CNN
F 1 "GND" H 2300 3000 50  0000 C CNN
F 2 "" H 2300 3150 50  0000 C CNN
F 3 "" H 2300 3150 50  0000 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3000 2400 3000
Wire Wire Line
	2300 1500 2300 2300
Wire Wire Line
	2300 2300 2400 2300
Connection ~ 2300 3000
Connection ~ 2200 1100
Wire Wire Line
	2200 1900 2400 1900
Wire Wire Line
	2200 1100 2400 1100
Wire Wire Line
	2200 950  2200 1100
$Comp
L power:+3.3V #PWR04
U 1 1 580C1BC1
P 2200 950
F 0 "#PWR04" H 2200 800 50  0001 C CNN
F 1 "+3.3V" H 2200 1090 50  0000 C CNN
F 2 "" H 2200 950 50  0000 C CNN
F 3 "" H 2200 950 50  0000 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2400 1500
Connection ~ 2300 2300
Wire Wire Line
	2400 1200 1250 1200
Wire Wire Line
	1250 1300 2400 1300
Wire Wire Line
	1250 1400 2400 1400
Wire Wire Line
	2400 1600 1250 1600
Wire Wire Line
	1250 1700 2400 1700
Wire Wire Line
	1250 1800 2400 1800
Wire Wire Line
	2400 2000 1250 2000
Wire Wire Line
	1250 2100 2400 2100
Wire Wire Line
	1250 2200 2400 2200
Wire Wire Line
	2400 2400 1250 2400
Wire Wire Line
	1250 2500 2400 2500
Wire Wire Line
	1250 2600 2400 2600
Wire Wire Line
	2400 2700 1250 2700
Wire Wire Line
	1250 2800 2400 2800
Wire Wire Line
	1250 2900 2400 2900
Wire Wire Line
	2900 2800 3950 2800
Wire Wire Line
	2900 2900 3950 2900
Wire Wire Line
	2900 2300 3950 2300
Wire Wire Line
	2900 2400 3950 2400
Wire Wire Line
	2900 2100 3950 2100
Wire Wire Line
	2900 2200 3950 2200
Wire Wire Line
	2900 1800 3950 1800
Wire Wire Line
	2900 1900 3950 1900
Wire Wire Line
	2900 1500 3950 1500
Wire Wire Line
	2900 1600 3950 1600
Wire Wire Line
	2900 1400 3950 1400
Wire Wire Line
	2900 2600 3950 2600
Text Label 1250 1200 0    50   ~ 0
GPIO2(SDA1)
Text Label 1250 1300 0    50   ~ 0
GPIO3(SCL1)
Text Label 1250 1400 0    50   ~ 0
GPIO4(GCLK)
Text Label 1250 1600 0    50   ~ 0
GPIO17(GEN0)
Text Label 1250 1700 0    50   ~ 0
GPIO27(GEN2)
Text Label 1250 1800 0    50   ~ 0
GPIO22(GEN3)
Text Label 1250 2000 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 1250 2100 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 1250 2200 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 1250 2400 0    50   ~ 0
ID_SD
Text Label 1250 2500 0    50   ~ 0
GPIO5
Text Label 1250 2600 0    50   ~ 0
GPIO6
Text Label 1250 2700 0    50   ~ 0
GPIO13(PWM1)
Text Label 1250 2800 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 1250 2900 0    50   ~ 0
GPIO26
Text Label 3950 2900 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 3950 2800 2    50   ~ 0
GPIO16
Text Label 3950 2600 2    50   ~ 0
GPIO12(PWM0)
Text Label 3950 2400 2    50   ~ 0
ID_SC
Text Label 3950 2300 2    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 3950 2200 2    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 3950 2100 2    50   ~ 0
GPIO25(GEN6)
Text Label 3950 1900 2    50   ~ 0
GPIO24(GEN5)
Text Label 3950 1800 2    50   ~ 0
GPIO23(GEN4)
Text Label 3950 1600 2    50   ~ 0
GPIO18(GEN1)(PWM0)
Text Label 3950 1500 2    50   ~ 0
GPIO15(RXD0)
Text Label 3950 1400 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	3000 1300 2900 1300
Connection ~ 3000 1700
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L Kicad-rescue:Mounting_Hole-Mechanical MK1
U 1 1 5834FB2E
P 3000 7200
F 0 "MK1" H 3100 7246 50  0000 L CNN
F 1 "M2.5" H 3100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7200 60  0001 C CNN
F 3 "" H 3000 7200 60  0001 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L Kicad-rescue:Mounting_Hole-Mechanical MK3
U 1 1 5834FBEF
P 3450 7200
F 0 "MK3" H 3550 7246 50  0000 L CNN
F 1 "M2.5" H 3550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7200 60  0001 C CNN
F 3 "" H 3450 7200 60  0001 C CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L Kicad-rescue:Mounting_Hole-Mechanical MK2
U 1 1 5834FC19
P 3000 7400
F 0 "MK2" H 3100 7446 50  0000 L CNN
F 1 "M2.5" H 3100 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7400 60  0001 C CNN
F 3 "" H 3000 7400 60  0001 C CNN
	1    3000 7400
	1    0    0    -1  
$EndComp
$Comp
L Kicad-rescue:Mounting_Hole-Mechanical MK4
U 1 1 5834FC4F
P 3450 7400
F 0 "MK4" H 3550 7446 50  0000 L CNN
F 1 "M2.5" H 3550 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7400 60  0001 C CNN
F 3 "" H 3450 7400 60  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Text Notes 3000 7050 0    50   ~ 0
Mounting Holes
$Comp
L Connector_Generic:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 2600 2000
F 0 "P1" H 2650 3117 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2650 3026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H -2250 1050 50  0001 C CNN
F 3 "" H -2250 1050 50  0001 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3000 3950 3000
Text Label 3950 3000 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	3100 1100 3100 1200
Wire Wire Line
	3000 2700 3000 3150
Wire Wire Line
	3000 2500 3000 2700
Wire Wire Line
	3000 2000 3000 2500
Wire Wire Line
	2300 3000 2300 3100
Wire Wire Line
	2200 1100 2200 1900
Wire Wire Line
	2300 2300 2300 3000
Wire Wire Line
	3000 1700 3000 2000
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5C10FFCC
P 7000 5750
F 0 "Q1" H 7191 5796 50  0000 L CNN
F 1 "2N2219" H 7191 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 7200 5675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 7000 5750 50  0001 L CNN
	1    7000 5750
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3008 U1
U 1 1 5C1100AB
P 7700 3100
F 0 "U1" H 7700 3778 50  0000 C CNN
F 1 "MCP3008" H 7700 3687 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W10.16mm_LongPads" H 7800 3200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 7800 3200 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5C110213
P 1250 3950
F 0 "J2" H 1356 4228 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1356 4137 50  0000 C CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 1250 3950 50  0001 C CNN
F 3 "~" H 1250 3950 50  0001 C CNN
	1    1250 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5C1102AD
P 1000 5150
F 0 "J1" H 1106 5428 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1106 5337 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1000 5150 50  0001 C CNN
F 3 "~" H 1000 5150 50  0001 C CNN
	1    1000 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5C110352
P 7300 5300
F 0 "J7" H 7327 5276 50  0000 L CNN
F 1 "Conn_01x02_Female" H 7327 5185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7300 5300 50  0001 C CNN
F 3 "~" H 7300 5300 50  0001 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5C110502
P 6300 2400
F 0 "J6" H 6406 2678 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6406 2587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6300 2400 50  0001 C CNN
F 3 "~" H 6300 2400 50  0001 C CNN
	1    6300 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C117253
P 6650 5750
F 0 "R4" V 6857 5750 50  0000 C CNN
F 1 "220" V 6766 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 5750 50  0001 C CNN
F 3 "~" H 6650 5750 50  0001 C CNN
	1    6650 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5C11D8C7
P 7100 5150
F 0 "#PWR0101" H 7100 5000 50  0001 C CNN
F 1 "+5V" H 7115 5323 50  0000 C CNN
F 2 "" H 7100 5150 50  0001 C CNN
F 3 "" H 7100 5150 50  0001 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C124F45
P 7100 6050
F 0 "#PWR0102" H 7100 5800 50  0001 C CNN
F 1 "GND" H 7105 5877 50  0000 C CNN
F 2 "" H 7100 6050 50  0001 C CNN
F 3 "" H 7100 6050 50  0001 C CNN
	1    7100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5150 7100 5300
Wire Wire Line
	7100 5400 7100 5550
Wire Wire Line
	7100 5950 7100 6050
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5C130C22
P 8850 5750
F 0 "Q2" H 9041 5796 50  0000 L CNN
F 1 "2N2219" H 9041 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 9050 5675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 8850 5750 50  0001 L CNN
	1    8850 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5C130C29
P 9150 5300
F 0 "J8" H 9177 5276 50  0000 L CNN
F 1 "Conn_01x02_Female" H 9177 5185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9150 5300 50  0001 C CNN
F 3 "~" H 9150 5300 50  0001 C CNN
	1    9150 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C130C30
P 8500 5750
F 0 "R5" V 8707 5750 50  0000 C CNN
F 1 "220" V 8616 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 5750 50  0001 C CNN
F 3 "~" H 8500 5750 50  0001 C CNN
	1    8500 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5C130C37
P 8950 5150
F 0 "#PWR0103" H 8950 5000 50  0001 C CNN
F 1 "+5V" H 8965 5323 50  0000 C CNN
F 2 "" H 8950 5150 50  0001 C CNN
F 3 "" H 8950 5150 50  0001 C CNN
	1    8950 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C130C3D
P 8950 6050
F 0 "#PWR0104" H 8950 5800 50  0001 C CNN
F 1 "GND" H 8955 5877 50  0000 C CNN
F 2 "" H 8950 6050 50  0001 C CNN
F 3 "" H 8950 6050 50  0001 C CNN
	1    8950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5150 8950 5300
Wire Wire Line
	8950 5400 8950 5550
Wire Wire Line
	8950 5950 8950 6050
$Comp
L Transistor_BJT:2N2219 Q3
U 1 1 5C134B3A
P 10400 5800
F 0 "Q3" H 10591 5846 50  0000 L CNN
F 1 "2N2219" H 10591 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 10600 5725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 10400 5800 50  0001 L CNN
	1    10400 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 5C134B41
P 10700 5350
F 0 "J9" H 10727 5326 50  0000 L CNN
F 1 "Conn_01x02_Female" H 10727 5235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10700 5350 50  0001 C CNN
F 3 "~" H 10700 5350 50  0001 C CNN
	1    10700 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C134B48
P 10050 5800
F 0 "R6" V 10257 5800 50  0000 C CNN
F 1 "220" V 10166 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9980 5800 50  0001 C CNN
F 3 "~" H 10050 5800 50  0001 C CNN
	1    10050 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5C134B4F
P 10500 5200
F 0 "#PWR0105" H 10500 5050 50  0001 C CNN
F 1 "+5V" H 10515 5373 50  0000 C CNN
F 2 "" H 10500 5200 50  0001 C CNN
F 3 "" H 10500 5200 50  0001 C CNN
	1    10500 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C134B55
P 10500 6100
F 0 "#PWR0106" H 10500 5850 50  0001 C CNN
F 1 "GND" H 10505 5927 50  0000 C CNN
F 2 "" H 10500 6100 50  0001 C CNN
F 3 "" H 10500 6100 50  0001 C CNN
	1    10500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5200 10500 5350
Wire Wire Line
	10500 5450 10500 5600
Wire Wire Line
	10500 6000 10500 6100
$Comp
L power:GND #PWR0107
U 1 1 5C13B7DD
P 1450 4150
F 0 "#PWR0107" H 1450 3900 50  0001 C CNN
F 1 "GND" H 1455 3977 50  0000 C CNN
F 2 "" H 1450 4150 50  0001 C CNN
F 3 "" H 1450 4150 50  0001 C CNN
	1    1450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5C13B840
P 2050 4150
F 0 "#PWR0108" H 2050 4000 50  0001 C CNN
F 1 "+3.3V" V 2065 4278 50  0000 L CNN
F 2 "" H 2050 4150 50  0001 C CNN
F 3 "" H 2050 4150 50  0001 C CNN
	1    2050 4150
	0    1    1    0   
$EndComp
NoConn ~ 1450 3950
Text Label 2050 3850 0    50   ~ 0
GPIO4(GCLK)
$Comp
L Device:R R2
U 1 1 5C1432EC
P 1800 4000
F 0 "R2" H 1870 4046 50  0000 L CNN
F 1 "4.7k" H 1870 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 4000 50  0001 C CNN
F 3 "~" H 1800 4000 50  0001 C CNN
	1    1800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3850 2050 3850
Connection ~ 1800 3850
Wire Wire Line
	1800 4150 2050 4150
Connection ~ 1800 4150
Wire Wire Line
	1450 4050 1700 4050
Wire Wire Line
	1700 4050 1700 4150
Wire Wire Line
	1450 3850 1800 3850
Wire Wire Line
	1700 4150 1800 4150
$Comp
L Device:R R1
U 1 1 5C15BFC7
P 1350 5250
F 0 "R1" V 1557 5250 50  0000 C CNN
F 1 "330" V 1466 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1280 5250 50  0001 C CNN
F 3 "~" H 1350 5250 50  0001 C CNN
	1    1350 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C15C02F
P 2850 5250
F 0 "R3" V 3057 5250 50  0000 C CNN
F 1 "470" V 2966 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 5250 50  0001 C CNN
F 3 "~" H 2850 5250 50  0001 C CNN
	1    2850 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 5050 1550 5050
Wire Wire Line
	1500 5250 2600 5250
Wire Wire Line
	3000 5350 1200 5350
Wire Wire Line
	3000 5350 3000 5250
$Comp
L power:GND #PWR0110
U 1 1 5C1746F0
P 3000 5350
F 0 "#PWR0110" H 3000 5100 50  0001 C CNN
F 1 "GND" H 3005 5177 50  0000 C CNN
F 2 "" H 3000 5350 50  0001 C CNN
F 3 "" H 3000 5350 50  0001 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
Connection ~ 3000 5350
Wire Wire Line
	1200 5150 1700 5150
Wire Wire Line
	2600 5200 2600 5250
Connection ~ 2600 5250
Wire Wire Line
	2600 5250 2700 5250
$Comp
L power:+3.3V #PWR0111
U 1 1 5C186EDE
P 7900 2600
F 0 "#PWR0111" H 7900 2450 50  0001 C CNN
F 1 "+3.3V" H 7915 2773 50  0000 C CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2600 7900 2600
Connection ~ 7900 2600
$Comp
L power:GND #PWR0112
U 1 1 5C18A745
P 7750 3700
F 0 "#PWR0112" H 7750 3450 50  0001 C CNN
F 1 "GND" H 7755 3527 50  0000 C CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3700 7750 3700
Connection ~ 7750 3700
Wire Wire Line
	7750 3700 7900 3700
Text Label 8300 3000 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 8300 3100 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 8300 3200 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 8300 3300 0    50   ~ 0
GPIO8(SPI0_CE_N)
$Comp
L power:GND #PWR0113
U 1 1 5C1B09DB
P 6800 2300
F 0 "#PWR0113" H 6800 2050 50  0001 C CNN
F 1 "GND" H 6805 2127 50  0000 C CNN
F 2 "" H 6800 2300 50  0001 C CNN
F 3 "" H 6800 2300 50  0001 C CNN
	1    6800 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2300 6800 2300
Wire Wire Line
	6500 2400 6800 2400
$Comp
L power:+5V #PWR0114
U 1 1 5C1B4529
P 6800 2400
F 0 "#PWR0114" H 6800 2250 50  0001 C CNN
F 1 "+5V" V 6815 2528 50  0000 L CNN
F 2 "" H 6800 2400 50  0001 C CNN
F 3 "" H 6800 2400 50  0001 C CNN
	1    6800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2500 7100 2500
Wire Wire Line
	7100 2500 7100 2800
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5C1BA04B
P 4400 2400
F 0 "J5" H 4506 2678 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4506 2587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4400 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C1BA052
P 4900 2300
F 0 "#PWR0115" H 4900 2050 50  0001 C CNN
F 1 "GND" H 4905 2127 50  0000 C CNN
F 2 "" H 4900 2300 50  0001 C CNN
F 3 "" H 4900 2300 50  0001 C CNN
	1    4900 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2300 4900 2300
Wire Wire Line
	4600 2400 4900 2400
$Comp
L power:+5V #PWR0116
U 1 1 5C1BA05A
P 4900 2400
F 0 "#PWR0116" H 4900 2250 50  0001 C CNN
F 1 "+5V" V 4915 2528 50  0000 L CNN
F 2 "" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0001 C CNN
	1    4900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2500 5200 2500
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5C1BC16E
P 5350 2400
F 0 "J3" H 5456 2678 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5456 2587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5350 2400 50  0001 C CNN
F 3 "~" H 5350 2400 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C1BC175
P 5850 2300
F 0 "#PWR0117" H 5850 2050 50  0001 C CNN
F 1 "GND" H 5855 2127 50  0000 C CNN
F 2 "" H 5850 2300 50  0001 C CNN
F 3 "" H 5850 2300 50  0001 C CNN
	1    5850 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2300 5850 2300
Wire Wire Line
	5550 2400 5850 2400
$Comp
L power:+5V #PWR0118
U 1 1 5C1BC17D
P 5850 2400
F 0 "#PWR0118" H 5850 2250 50  0001 C CNN
F 1 "+5V" V 5865 2528 50  0000 L CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2500 6150 2500
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5C1C9CE8
P 4950 3400
F 0 "J4" H 5056 3678 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5056 3587 50  0000 C CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 4950 3400 50  0001 C CNN
F 3 "~" H 4950 3400 50  0001 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C1CC377
P 5150 3300
F 0 "#PWR0119" H 5150 3050 50  0001 C CNN
F 1 "GND" V 5155 3172 50  0000 R CNN
F 2 "" H 5150 3300 50  0001 C CNN
F 3 "" H 5150 3300 50  0001 C CNN
	1    5150 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5C1CEA29
P 5150 3400
F 0 "#PWR0120" H 5150 3250 50  0001 C CNN
F 1 "+5V" V 5165 3528 50  0000 L CNN
F 2 "" H 5150 3400 50  0001 C CNN
F 3 "" H 5150 3400 50  0001 C CNN
	1    5150 3400
	0    1    1    0   
$EndComp
NoConn ~ 5150 3500
Wire Wire Line
	7100 3100 6150 3100
Wire Wire Line
	6150 3100 6150 3600
Wire Wire Line
	6150 3600 5150 3600
$Comp
L power:GND #PWR0121
U 1 1 5C1D4F63
P 7050 3700
F 0 "#PWR0121" H 7050 3450 50  0001 C CNN
F 1 "GND" H 7055 3527 50  0000 C CNN
F 2 "" H 7050 3700 50  0001 C CNN
F 3 "" H 7050 3700 50  0001 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3200 7050 3200
Wire Wire Line
	7050 3200 7050 3300
Wire Wire Line
	7100 3300 7050 3300
Connection ~ 7050 3300
Wire Wire Line
	7050 3300 7050 3400
Wire Wire Line
	7100 3400 7050 3400
Connection ~ 7050 3400
Wire Wire Line
	7050 3400 7050 3500
Wire Wire Line
	7100 3500 7050 3500
Connection ~ 7050 3500
Wire Wire Line
	7050 3500 7050 3700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C203DFA
P 3100 1100
F 0 "#FLG0101" H 3100 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 3100 1228 50  0000 L CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 "~" H 3100 1100 50  0001 C CNN
	1    3100 1100
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C203E64
P 2200 1100
F 0 "#FLG0102" H 2200 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 1228 50  0000 L CNN
F 2 "" H 2200 1100 50  0001 C CNN
F 3 "~" H 2200 1100 50  0001 C CNN
	1    2200 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5C204123
P 2300 3100
F 0 "#FLG0103" H 2300 3175 50  0001 C CNN
F 1 "PWR_FLAG" V 2300 3228 50  0000 L CNN
F 2 "" H 2300 3100 50  0001 C CNN
F 3 "~" H 2300 3100 50  0001 C CNN
	1    2300 3100
	0    -1   -1   0   
$EndComp
Connection ~ 2300 3100
Wire Wire Line
	2300 3100 2300 3150
NoConn ~ 2400 1200
NoConn ~ 2400 1300
NoConn ~ 2400 2400
NoConn ~ 2400 2700
NoConn ~ 2400 2800
NoConn ~ 2400 2900
NoConn ~ 2900 2800
NoConn ~ 2900 2600
NoConn ~ 2900 2400
NoConn ~ 2900 2300
NoConn ~ 2900 1600
NoConn ~ 2900 1500
NoConn ~ 2900 1400
Text Label 1700 5150 0    50   ~ 0
GPIO5
Text Label 2600 5200 1    50   ~ 0
GPIO6
Text Label 9900 5800 2    50   ~ 0
GPIO17(GEN0)
Text Label 8350 5750 2    50   ~ 0
GPIO27(GEN2)
Text Label 6500 5750 2    50   ~ 0
GPIO22(GEN3)
NoConn ~ 2900 2900
NoConn ~ 2900 3000
NoConn ~ 2900 2100
NoConn ~ 2900 1900
NoConn ~ 2900 1800
$Comp
L power:+5V #PWR0109
U 1 1 5C165575
P 1550 5050
F 0 "#PWR0109" H 1550 4900 50  0001 C CNN
F 1 "+5V" H 1565 5223 50  0000 C CNN
F 2 "" H 1550 5050 50  0001 C CNN
F 3 "" H 1550 5050 50  0001 C CNN
	1    1550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2500 6150 2900
Wire Wire Line
	6150 2900 7100 2900
Wire Wire Line
	5200 2500 5200 3000
Wire Wire Line
	5200 3000 7100 3000
$EndSCHEMATC
