EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Full Can Variable Clock Oscillator"
Date "2021-08-23"
Rev "0.1"
Comp "Implementation by wiretap"
Comment1 "Based on the work of Adafruit's Si5351A Rev C"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:NCP164CSN330T1G IC1
U 1 1 6123B230
P 1450 1200
F 0 "IC1" H 2050 1465 50  0000 C CNN
F 1 "NCP164CSN330T1G" H 2050 1374 50  0000 C CNN
F 2 "SOT95P275X110-5N" H 2500 1300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/NCP164CSN330T1G.pdf" H 2500 1200 50  0001 L CNN
F 4 "LDO Regulator Pos 3.3V 0.3A 5-Pin TSOP T/R" H 2500 1100 50  0001 L CNN "Description"
F 5 "1.1" H 2500 1000 50  0001 L CNN "Height"
F 6 "863-NCP164CSN330T1G" H 2500 900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor/NCP164CSN330T1G?qs=xZ%2FP%252Ba9zWqbi%2FAyy5UtoRw%3D%3D" H 2500 800 50  0001 L CNN "Mouser Price/Stock"
F 8 "ON Semiconductor" H 2500 700 50  0001 L CNN "Manufacturer_Name"
F 9 "NCP164CSN330T1G" H 2500 600 50  0001 L CNN "Manufacturer_Part_Number"
	1    1450 1200
	1    0    0    -1  
$EndComp
Text Label 1250 1050 1    50   ~ 0
VIN
Wire Wire Line
	1250 1050 1250 1200
Wire Wire Line
	1250 1200 1450 1200
Wire Wire Line
	1250 1200 1250 1400
Wire Wire Line
	1250 1400 1450 1400
Connection ~ 1250 1200
$Comp
L Device:C_Small C1
U 1 1 6123DB9A
P 950 1400
F 0 "C1" H 1042 1446 50  0000 L CNN
F 1 "1uF" H 1042 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
	1    950  1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1200 950  1200
Wire Wire Line
	950  1200 950  1300
$Comp
L power:GND #PWR0101
U 1 1 6123EC11
P 1350 1700
F 0 "#PWR0101" H 1350 1450 50  0001 C CNN
F 1 "GND" H 1355 1527 50  0000 C CNN
F 2 "" H 1350 1700 50  0001 C CNN
F 3 "" H 1350 1700 50  0001 C CNN
	1    1350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1500 950  1700
Wire Wire Line
	950  1700 1350 1700
Wire Wire Line
	1350 1700 1350 1300
Wire Wire Line
	1350 1300 1450 1300
Connection ~ 1350 1700
Text Label 2850 1050 1    50   ~ 0
VDD
Wire Wire Line
	2650 1300 2850 1300
Wire Wire Line
	2850 1300 2850 1050
$Comp
L Device:C_Small C2
U 1 1 6123F54C
P 3050 1400
F 0 "C2" H 3142 1446 50  0000 L CNN
F 1 "1uF" H 3142 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3050 1400 50  0001 C CNN
F 3 "~" H 3050 1400 50  0001 C CNN
	1    3050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1300 3050 1300
Connection ~ 2850 1300
$Comp
L power:GND #PWR0102
U 1 1 61240238
P 3050 1650
F 0 "#PWR0102" H 3050 1400 50  0001 C CNN
F 1 "GND" H 3055 1477 50  0000 C CNN
F 2 "" H 3050 1650 50  0001 C CNN
F 3 "" H 3050 1650 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1500 3050 1650
Wire Notes Line
	600  650  3450 650 
Wire Notes Line
	3450 650  3450 2000
Wire Notes Line
	3450 2000 600  2000
Wire Notes Line
	600  2000 600  650 
Text Notes 1600 750  0    50   ~ 0
Voltage Regulation
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 6124398B
P 1700 3100
F 0 "Q1" V 1949 3100 50  0000 C CNN
F 1 "BSS138-G" V 2040 3100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1900 3025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 1700 3100 50  0001 L CNN
	1    1700 3100
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 61249888
P 2200 3550
F 0 "Q2" V 2449 3550 50  0000 C CNN
F 1 "BSS138-G" V 2540 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2400 3475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 2200 3550 50  0001 L CNN
	1    2200 3550
	0    1    1    0   
$EndComp
Text Label 700  3200 0    50   ~ 0
SDA_3V
Text Label 700  3650 0    50   ~ 0
SCL_3V
$Comp
L Device:R_Small R1
U 1 1 6124F07B
P 1050 2750
F 0 "R1" H 1109 2796 50  0000 L CNN
F 1 "10k" H 1109 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1050 2750 50  0001 C CNN
F 3 "~" H 1050 2750 50  0001 C CNN
	1    1050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 6124F8D5
P 1300 2750
F 0 "R2" H 1359 2796 50  0000 L CNN
F 1 "10k" H 1359 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1300 2750 50  0001 C CNN
F 3 "~" H 1300 2750 50  0001 C CNN
	1    1300 2750
	1    0    0    -1  
$EndComp
Text Label 1050 2400 1    50   ~ 0
VDD
Wire Wire Line
	2000 3650 1300 3650
Wire Wire Line
	700  3200 1050 3200
Wire Wire Line
	1050 2850 1050 3200
Connection ~ 1050 3200
Wire Wire Line
	1050 3200 1500 3200
Wire Wire Line
	1300 2850 1300 3650
Connection ~ 1300 3650
Wire Wire Line
	1300 3650 700  3650
Wire Wire Line
	1050 2400 1050 2500
Wire Wire Line
	1050 2500 1300 2500
Wire Wire Line
	1300 2500 1300 2650
Connection ~ 1050 2500
Wire Wire Line
	1050 2500 1050 2650
Wire Wire Line
	1300 2500 1700 2500
Wire Wire Line
	1700 2500 1700 2900
Connection ~ 1300 2500
Wire Wire Line
	1700 2500 2200 2500
Wire Wire Line
	2200 2500 2200 3350
Connection ~ 1700 2500
Text Label 2550 3200 0    50   ~ 0
SDA_5V
Text Label 2550 3650 0    50   ~ 0
SCL_5V
$Comp
L Device:R_Small R3
U 1 1 61253A40
P 2900 2750
F 0 "R3" H 2959 2796 50  0000 L CNN
F 1 "10k" H 2959 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2900 2750 50  0001 C CNN
F 3 "~" H 2900 2750 50  0001 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6125568C
P 3150 2750
F 0 "R4" H 3209 2796 50  0000 L CNN
F 1 "10k" H 3209 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3150 2750 50  0001 C CNN
F 3 "~" H 3150 2750 50  0001 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
Text Label 3150 2400 1    50   ~ 0
VIN
Wire Wire Line
	3150 2650 3150 2500
Wire Wire Line
	2900 2650 2900 2500
Wire Wire Line
	2900 2500 3150 2500
Connection ~ 3150 2500
Wire Wire Line
	3150 2500 3150 2400
Wire Wire Line
	2900 3200 2900 2850
Wire Wire Line
	1900 3200 2900 3200
Wire Wire Line
	3150 3650 3150 2850
Wire Wire Line
	2400 3650 3150 3650
Wire Notes Line
	3450 2150 3450 4000
Wire Notes Line
	600  4000 600  2150
Text Notes 1800 2250 0    50   ~ 0
I2C Voltage
Wire Notes Line
	600  2150 3450 2150
Wire Notes Line
	600  4000 3450 4000
$Comp
L SamacSys_Parts:SI5351A-B02075-GT U1
U 1 1 6127D6C3
P 5200 1200
F 0 "U1" H 5800 1465 50  0000 C CNN
F 1 "SI5351A-B02075-GT" H 5800 1374 50  0000 C CNN
F 2 "SamacSys_Parts:Silicon_Laboratories-SI5351A-B02075-GT-0" H 5200 1600 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf" H 5200 1700 50  0001 L CNN
F 4 "160 MHz" H 5200 1800 50  0001 L CNN "Maximum Input Frequency"
F 5 "27 mA" H 5200 1900 50  0001 L CNN "Operating Supply Current"
F 6 "3.3 V" H 5200 2000 50  0001 L CNN "Operating Supply Voltage"
F 7 "VCXO Clock Generators" H 5200 2100 50  0001 L CNN "Type"
F 8 "IC" H 5200 2200 50  0001 L CNN "category"
F 9 "yes" H 5200 2500 50  0001 L CNN "lead free"
F 10 "af2264f824bf6c0b" H 5200 2600 50  0001 L CNN "library id"
F 11 "Silicon Laboratories" H 5200 2700 50  0001 L CNN "manufacturer"
F 12 "634-SI5351A-B02075GT" H 5200 2800 50  0001 L CNN "mouser part number"
F 13 "MSOP10" H 5200 2900 50  0001 L CNN "package"
F 14 "yes" H 5200 3000 50  0001 L CNN "rohs"
F 15 "+85°C" H 5200 3100 50  0001 L CNN "temperature range high"
F 16 "-40°C" H 5200 3200 50  0001 L CNN "temperature range low"
F 17 "3.3V" H 5200 3300 50  0001 L CNN "voltage"
	1    5200 1200
	1    0    0    -1  
$EndComp
NoConn ~ 6300 1300
NoConn ~ 6300 1400
Text Label 6450 1200 0    50   ~ 0
3VCLK
$Comp
L power:GND #PWR0103
U 1 1 6127F83F
P 6450 1900
F 0 "#PWR0103" H 6450 1650 50  0001 C CNN
F 1 "GND" H 6455 1727 50  0000 C CNN
F 2 "" H 6450 1900 50  0001 C CNN
F 3 "" H 6450 1900 50  0001 C CNN
	1    6450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1900 6450 1900
Wire Wire Line
	6300 1200 6450 1200
$Comp
L Device:C_Small C4
U 1 1 61280CE0
P 4350 1100
F 0 "C4" H 4442 1146 50  0000 L CNN
F 1 "0.47uF" H 4442 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4350 1100 50  0001 C CNN
F 3 "~" H 4350 1100 50  0001 C CNN
	1    4350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 61281933
P 4750 1100
F 0 "C3" H 4842 1146 50  0000 L CNN
F 1 "0.47uF" H 4842 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4750 1100 50  0001 C CNN
F 3 "~" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
Text Label 5150 950  1    50   ~ 0
VDD
$Comp
L power:GND #PWR0104
U 1 1 6128A879
P 4300 950
F 0 "#PWR0104" H 4300 700 50  0001 C CNN
F 1 "GND" V 4305 822 50  0000 R CNN
F 2 "" H 4300 950 50  0001 C CNN
F 3 "" H 4300 950 50  0001 C CNN
	1    4300 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1300 5150 1300
Wire Wire Line
	4750 1200 5150 1200
Wire Wire Line
	5150 950  5150 1200
Connection ~ 5150 1200
Wire Wire Line
	5150 1200 5300 1200
Wire Wire Line
	5150 1200 5150 1300
Connection ~ 5150 1300
Wire Wire Line
	5150 1300 5300 1300
Wire Wire Line
	4750 950  4750 1000
Text Label 4850 1900 0    50   ~ 0
SCL_3V
Wire Wire Line
	4850 1900 5300 1900
Text Label 4850 1800 0    50   ~ 0
SDA_3V
Wire Wire Line
	4850 1800 5300 1800
$Comp
L SamacSys_Parts:ABM8G-25.000MHZ-4Y-T3 Y1
U 1 1 612907D1
P 4000 3050
F 0 "Y1" H 4800 3315 50  0000 C CNN
F 1 "ABM8G-25.000MHZ-4Y-T3" H 4800 3224 50  0000 C CNN
F 2 "ABM8G48000MHZ18D2YT" H 5450 3150 50  0001 L CNN
F 3 "https://abracon.com/Resonators/ABM8G.pdf" H 5450 3050 50  0001 L CNN
F 4 "Abracon 25MHz Crystal Unit +/-30ppm SMD 4-Pin 3.2 x 2.5 x 1mm" H 5450 2950 50  0001 L CNN "Description"
F 5 "1" H 5450 2850 50  0001 L CNN "Height"
F 6 "815-ABM8G-25-4YT3" H 5450 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ABRACON/ABM8G-25000MHZ-4Y-T3?qs=hxOQwdLlgeoFIRxLRcvgsA%3D%3D" H 5450 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "ABRACON" H 5450 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "ABM8G-25.000MHZ-4Y-T3" H 5450 2450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1450 4000 1400
Wire Wire Line
	4000 1400 5150 1400
Wire Wire Line
	5150 1400 5150 1500
Wire Wire Line
	5150 1500 5300 1500
Wire Wire Line
	4100 3050 4500 3050
Wire Wire Line
	4500 3050 4500 1600
Wire Wire Line
	4500 1600 5300 1600
Wire Notes Line
	6750 650  6750 3100
Wire Notes Line
	3600 3100 3600 650 
Text Notes 4800 750  0    50   ~ 0
Clock Generator
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 612A6FF0
P 1800 4850
F 0 "J1" H 1718 4425 50  0000 C CNN
F 1 "I2C" H 1718 4516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1800 4850 50  0001 C CNN
F 3 "~" H 1800 4850 50  0001 C CNN
	1    1800 4850
	-1   0    0    1   
$EndComp
Text Label 2200 4650 0    50   ~ 0
SDA_5V
Text Label 2200 4750 0    50   ~ 0
SCL_5V
Text Label 2200 4850 0    50   ~ 0
GND
Text Label 2200 4950 0    50   ~ 0
VIN
Wire Wire Line
	2000 4650 2200 4650
Wire Wire Line
	2000 4750 2200 4750
Wire Wire Line
	2000 4850 2200 4850
Wire Wire Line
	2000 4950 2200 4950
$Comp
L Oscillator:CXO_DIP14 X1
U 1 1 612AD7F4
P 7500 1400
F 0 "X1" H 7750 1650 50  0000 L CNN
F 1 "CXO_DIP14" H 7750 1550 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 7950 1050 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 7400 1400 50  0001 C CNN
	1    7500 1400
	1    0    0    -1  
$EndComp
Text Label 7500 1000 1    50   ~ 0
VIN
$Comp
L power:GND #PWR0105
U 1 1 612AF9E1
P 7500 1800
F 0 "#PWR0105" H 7500 1550 50  0001 C CNN
F 1 "GND" H 7505 1627 50  0000 C CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
NoConn ~ 7200 1400
Text Label 7900 1400 0    50   ~ 0
5VCLK
Wire Wire Line
	7500 1000 7500 1100
Wire Wire Line
	7800 1400 7900 1400
Wire Wire Line
	7500 1700 7500 1800
Wire Notes Line
	600  4150 3450 4150
Wire Notes Line
	3450 4150 3450 5100
Wire Notes Line
	3450 5100 600  5100
Wire Notes Line
	600  5100 600  4150
Wire Notes Line
	6900 650  6900 2150
Wire Notes Line
	6900 2150 8300 2150
Wire Notes Line
	8300 2150 8300 650 
Wire Notes Line
	8300 650  6900 650 
Text Notes 7250 750  0    50   ~ 0
Full Can Footprint
Text Notes 1500 4250 0    50   ~ 0
I2C Programming Header
Wire Wire Line
	4300 950  4350 950 
Wire Wire Line
	4350 1000 4350 950 
Connection ~ 4350 950 
Wire Wire Line
	4350 950  4750 950 
Wire Wire Line
	4350 1300 4350 1200
Wire Notes Line
	3600 650  6750 650 
Wire Notes Line
	3600 3100 6750 3100
$Comp
L SamacSys_Parts:SN74LV1T34DBVRG4 IC2
U 1 1 612431F6
P 5250 2550
F 0 "IC2" H 5800 2815 50  0000 C CNN
F 1 "SN74LV1T34DBVRG4" H 5800 2724 50  0000 C CNN
F 2 "SOT95P280X145-5N" H 6200 2650 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/sn74lv1t34" H 6200 2550 50  0001 L CNN
F 4 "Single Power Supply BUFFER Logic Level Shifter (no enable)" H 6200 2450 50  0001 L CNN "Description"
F 5 "1.45" H 6200 2350 50  0001 L CNN "Height"
F 6 "595-SN74LV1T34DBVRG4" H 6200 2250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LV1T34DBVRG4?qs=vdi0iO8H4N10R%252Bt%252BjmxZrg%3D%3D" H 6200 2150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 6200 2050 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74LV1T34DBVRG4" H 6200 1950 50  0001 L CNN "Manufacturer_Part_Number"
	1    5250 2550
	1    0    0    -1  
$EndComp
Text Label 4950 2650 0    50   ~ 0
3VCLK
Wire Wire Line
	4950 2650 5250 2650
$Comp
L power:GND #PWR0106
U 1 1 61246526
P 5250 2750
F 0 "#PWR0106" H 5250 2500 50  0001 C CNN
F 1 "GND" H 5255 2577 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Text Label 6450 2650 0    50   ~ 0
VIN
Text Label 6450 2550 0    50   ~ 0
5VCLK
Wire Wire Line
	6350 2550 6450 2550
Wire Wire Line
	6350 2650 6450 2650
$EndSCHEMATC
