EESchema Schematic File Version 2
LIBS:core
LIBS:power
LIBS:sel-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 25
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
L Conn_01x02_Power J102
U 1 1 5B6356DA
P 750 850
F 0 "J102" H 750 950 50  0000 C CNN
F 1 "Conn_01x02_Power" H 750 650 50  0001 C CNN
F 2 "footprints:PH_1x2" H 650 850 50  0001 C CNN
F 3 "" H 750 850 50  0001 C CNN
	1    750  850 
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR102
U 1 1 5B658FD2
P 950 950
F 0 "#PWR102" H 950 700 50  0001 C CNN
F 1 "GND" H 950 800 50  0000 C CNN
F 2 "" H 950 950 50  0001 C CNN
F 3 "" H 950 950 50  0001 C CNN
	1    950  950 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR101
U 1 1 5B658FE8
P 950 850
F 0 "#PWR101" H 950 700 50  0001 C CNN
F 1 "VCC" H 950 1000 50  0000 C CNN
F 2 "" H 950 850 50  0001 C CNN
F 3 "" H 950 850 50  0001 C CNN
	1    950  850 
	1    0    0    -1  
$EndComp
$Sheet
S 1400 4850 700  750 
U 5B65D08A
F0 "out0" 60
F1 "outsel.sch" 60
F2 "Out" I R 2100 4900 60 
F3 "AndSel" I L 1400 5150 60 
F4 "OrSel" I L 1400 5250 60 
F5 "~A~" I L 1400 4900 60 
F6 "~B~" I L 1400 5000 60 
$EndSheet
$Sheet
S 3400 4850 700  750 
U 5B660636
F0 "out2" 60
F1 "outsel.sch" 60
F2 "Out" I R 4100 4900 60 
F3 "AndSel" I L 3400 5150 60 
F4 "OrSel" I L 3400 5250 60 
F5 "~A~" I L 3400 4900 60 
F6 "~B~" I L 3400 5000 60 
$EndSheet
$Sheet
S 4400 4850 700  750 
U 5B66064C
F0 "out3" 60
F1 "outsel.sch" 60
F2 "Out" I R 5100 4900 60 
F3 "AndSel" I L 4400 5150 60 
F4 "OrSel" I L 4400 5250 60 
F5 "~A~" I L 4400 4900 60 
F6 "~B~" I L 4400 5000 60 
$EndSheet
$Sheet
S 5400 4850 700  750 
U 5B661A72
F0 "out4" 60
F1 "outsel.sch" 60
F2 "Out" I R 6100 4900 60 
F3 "AndSel" I L 5400 5150 60 
F4 "OrSel" I L 5400 5250 60 
F5 "~A~" I L 5400 4900 60 
F6 "~B~" I L 5400 5000 60 
$EndSheet
$Sheet
S 6400 4850 700  750 
U 5B661A88
F0 "out5" 60
F1 "outsel.sch" 60
F2 "Out" I R 7100 4900 60 
F3 "AndSel" I L 6400 5150 60 
F4 "OrSel" I L 6400 5250 60 
F5 "~A~" I L 6400 4900 60 
F6 "~B~" I L 6400 5000 60 
$EndSheet
$Sheet
S 7400 4850 700  750 
U 5B661A9E
F0 "out6" 60
F1 "outsel.sch" 60
F2 "Out" I R 8100 4900 60 
F3 "AndSel" I L 7400 5150 60 
F4 "OrSel" I L 7400 5250 60 
F5 "~A~" I L 7400 4900 60 
F6 "~B~" I L 7400 5000 60 
$EndSheet
$Sheet
S 8400 4850 700  750 
U 5B661AB4
F0 "out7" 60
F1 "outsel.sch" 60
F2 "Out" I R 9100 4900 60 
F3 "AndSel" I L 8400 5150 60 
F4 "OrSel" I L 8400 5250 60 
F5 "~A~" I L 8400 4900 60 
F6 "~B~" I L 8400 5000 60 
$EndSheet
$Comp
L Conn_01x08 J113
U 1 1 5B662FCE
P 4800 6850
F 0 "J113" H 4800 7250 50  0000 C CNN
F 1 "Conn_01x08" H 4800 6350 50  0001 C CNN
F 2 "footprints:PH_1x8" H 4700 7150 50  0001 C CNN
F 3 "" H 4800 6850 50  0001 C CNN
	1    4800 6850
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x08 J114
U 1 1 5B6637CF
P 4800 7200
F 0 "J114" H 4800 7600 50  0000 C CNN
F 1 "Conn_01x08" H 4800 6700 50  0001 C CNN
F 2 "footprints:PH_1x8" H 4700 7500 50  0001 C CNN
F 3 "" H 4800 7200 50  0001 C CNN
	1    4800 7200
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x01 J111
U 1 1 5B664C9B
P 850 5750
F 0 "J111" H 850 5850 50  0000 C CNN
F 1 "Conn_01x01" H 850 5650 50  0001 C CNN
F 2 "footprints:PH_1x1" H 750 5750 50  0001 C CNN
F 3 "" H 850 5750 50  0001 C CNN
	1    850  5750
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J112
U 1 1 5B664EBE
P 850 5950
F 0 "J112" H 850 6050 50  0000 C CNN
F 1 "Conn_01x01" H 850 5850 50  0001 C CNN
F 2 "footprints:PH_1x1" H 750 5950 50  0001 C CNN
F 3 "" H 850 5950 50  0001 C CNN
	1    850  5950
	-1   0    0    1   
$EndComp
$Sheet
S 2400 4850 700  750 
U 5B65E5ED
F0 "out1" 60
F1 "outsel.sch" 60
F2 "Out" I R 3100 4900 60 
F3 "AndSel" I L 2400 5150 60 
F4 "OrSel" I L 2400 5250 60 
F5 "~A~" I L 2400 4900 60 
F6 "~B~" I L 2400 5000 60 
$EndSheet
$Sheet
S 800  1350 600  300 
U 5B670ED5
F0 "Asel0" 60
F1 "Asel.sch" 60
F2 "A" I L 800 1450 60 
F3 "Aen" I L 800 1550 60 
F4 "Asel" I R 1400 1450 60 
$EndSheet
$Sheet
S 1600 1350 600  300 
U 5B672A17
F0 "Asel1" 60
F1 "Asel.sch" 60
F2 "A" I L 1600 1450 60 
F3 "Aen" I L 1600 1550 60 
F4 "Asel" I R 2200 1450 60 
$EndSheet
$Sheet
S 2400 1350 600  300 
U 5B6738C6
F0 "Asel2" 60
F1 "Asel.sch" 60
F2 "A" I L 2400 1450 60 
F3 "Aen" I L 2400 1550 60 
F4 "Asel" I R 3000 1450 60 
$EndSheet
$Sheet
S 3200 1350 600  300 
U 5B6738D4
F0 "Asel3" 60
F1 "Asel.sch" 60
F2 "A" I L 3200 1450 60 
F3 "Aen" I L 3200 1550 60 
F4 "Asel" I R 3800 1450 60 
$EndSheet
$Sheet
S 4000 1350 600  300 
U 5B6749F6
F0 "Asel4" 60
F1 "Asel.sch" 60
F2 "A" I L 4000 1450 60 
F3 "Aen" I L 4000 1550 60 
F4 "Asel" I R 4600 1450 60 
$EndSheet
$Sheet
S 4800 1350 600  300 
U 5B674A04
F0 "Asel5" 60
F1 "Asel.sch" 60
F2 "A" I L 4800 1450 60 
F3 "Aen" I L 4800 1550 60 
F4 "Asel" I R 5400 1450 60 
$EndSheet
$Sheet
S 5600 1350 600  300 
U 5B674A12
F0 "Asel6" 60
F1 "Asel.sch" 60
F2 "A" I L 5600 1450 60 
F3 "Aen" I L 5600 1550 60 
F4 "Asel" I R 6200 1450 60 
$EndSheet
$Sheet
S 6400 1350 600  300 
U 5B674A20
F0 "Asel7" 60
F1 "Asel.sch" 60
F2 "A" I L 6400 1450 60 
F3 "Aen" I L 6400 1550 60 
F4 "Asel" I R 7000 1450 60 
$EndSheet
$Comp
L Conn_01x01 J104
U 1 1 5B6775DF
P 550 1800
F 0 "J104" H 550 1900 50  0000 C CNN
F 1 "Conn_01x01" H 550 1700 50  0001 C CNN
F 2 "footprints:PH_1x1" H 450 1800 50  0001 C CNN
F 3 "" H 550 1800 50  0001 C CNN
	1    550  1800
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x08 J103
U 1 1 5B67D76A
P 3650 850
F 0 "J103" H 3650 1250 50  0000 C CNN
F 1 "Conn_01x08" H 3650 350 50  0001 C CNN
F 2 "footprints:PH_1x8" H 3550 1150 50  0001 C CNN
F 3 "" H 3650 850 50  0001 C CNN
	1    3650 850 
	0    -1   -1   0   
$EndComp
$Sheet
S 3800 3300 600  550 
U 5B683A10
F0 "Bsel0" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 3800 3600 60 
F3 "~B~en" I L 3800 3700 60 
F4 "B" I L 3800 3350 60 
F5 "~B~" I L 3800 3450 60 
F6 "1en" I L 3800 3800 60 
F7 "Out" I R 4400 3350 60 
$EndSheet
$Sheet
S 4750 3300 600  550 
U 5B68A913
F0 "Bsel1" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 4750 3600 60 
F3 "~B~en" I L 4750 3700 60 
F4 "B" I L 4750 3350 60 
F5 "~B~" I L 4750 3450 60 
F6 "1en" I L 4750 3800 60 
F7 "Out" I R 5350 3350 60 
$EndSheet
$Sheet
S 5700 3300 600  550 
U 5B68BCDB
F0 "Bsel2" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 5700 3600 60 
F3 "~B~en" I L 5700 3700 60 
F4 "B" I L 5700 3350 60 
F5 "~B~" I L 5700 3450 60 
F6 "1en" I L 5700 3800 60 
F7 "Out" I R 6300 3350 60 
$EndSheet
$Sheet
S 6650 3300 600  550 
U 5B68BCF5
F0 "Bsel3" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 6650 3600 60 
F3 "~B~en" I L 6650 3700 60 
F4 "B" I L 6650 3350 60 
F5 "~B~" I L 6650 3450 60 
F6 "1en" I L 6650 3800 60 
F7 "Out" I R 7250 3350 60 
$EndSheet
$Sheet
S 7600 3300 600  550 
U 5B68D465
F0 "Bsel4" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 7600 3600 60 
F3 "~B~en" I L 7600 3700 60 
F4 "B" I L 7600 3350 60 
F5 "~B~" I L 7600 3450 60 
F6 "1en" I L 7600 3800 60 
F7 "Out" I R 8200 3350 60 
$EndSheet
$Sheet
S 8550 3300 600  550 
U 5B68D47F
F0 "Bsel5" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 8550 3600 60 
F3 "~B~en" I L 8550 3700 60 
F4 "B" I L 8550 3350 60 
F5 "~B~" I L 8550 3450 60 
F6 "1en" I L 8550 3800 60 
F7 "Out" I R 9150 3350 60 
$EndSheet
$Sheet
S 9500 3300 600  550 
U 5B68D499
F0 "Bsel6" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 9500 3600 60 
F3 "~B~en" I L 9500 3700 60 
F4 "B" I L 9500 3350 60 
F5 "~B~" I L 9500 3450 60 
F6 "1en" I L 9500 3800 60 
F7 "Out" I R 10100 3350 60 
$EndSheet
$Sheet
S 10450 3300 600  550 
U 5B68D4B3
F0 "Bsel7" 60
F1 "Bsel.sch" 60
F2 "Ben" I L 10450 3600 60 
F3 "~B~en" I L 10450 3700 60 
F4 "B" I L 10450 3350 60 
F5 "~B~" I L 10450 3450 60 
F6 "1en" I L 10450 3800 60 
F7 "Out" I R 11050 3350 60 
$EndSheet
Wire Wire Line
	2100 4900 2150 4900
Wire Wire Line
	2150 4900 2150 6600
Wire Wire Line
	2150 6600 4500 6600
Wire Wire Line
	4500 6600 4500 7000
Wire Wire Line
	1050 5750 8300 5750
Wire Wire Line
	1300 5750 1300 5150
Wire Wire Line
	1300 5150 1400 5150
Wire Wire Line
	1400 5250 1350 5250
Wire Wire Line
	1350 5250 1350 5950
Wire Wire Line
	1050 5950 8350 5950
Wire Wire Line
	2350 5950 2350 5250
Wire Wire Line
	2350 5250 2400 5250
Connection ~ 1350 5950
Wire Wire Line
	2300 5750 2300 5150
Wire Wire Line
	2300 5150 2400 5150
Connection ~ 1300 5750
Wire Wire Line
	3300 5750 3300 5150
Wire Wire Line
	3300 5150 3400 5150
Connection ~ 2300 5750
Wire Wire Line
	3400 5250 3350 5250
Wire Wire Line
	3350 5250 3350 5950
Connection ~ 2350 5950
Wire Wire Line
	4400 5150 4300 5150
Wire Wire Line
	4300 5150 4300 5750
Connection ~ 3300 5750
Wire Wire Line
	4400 5250 4350 5250
Wire Wire Line
	4350 5250 4350 5950
Connection ~ 3350 5950
Wire Wire Line
	5400 5150 5300 5150
Wire Wire Line
	5300 5150 5300 5750
Connection ~ 4300 5750
Wire Wire Line
	5400 5250 5350 5250
Wire Wire Line
	5350 5250 5350 5950
Connection ~ 4350 5950
Wire Wire Line
	6400 5150 6300 5150
Wire Wire Line
	6300 5150 6300 5750
Connection ~ 5300 5750
Wire Wire Line
	6400 5250 6350 5250
Wire Wire Line
	6350 5250 6350 5950
Connection ~ 5350 5950
Wire Wire Line
	7400 5150 7300 5150
Wire Wire Line
	7300 5150 7300 5750
Connection ~ 6300 5750
Wire Wire Line
	7400 5250 7350 5250
Wire Wire Line
	7350 5250 7350 5950
Connection ~ 6350 5950
Wire Wire Line
	8400 5150 8300 5150
Wire Wire Line
	8300 5150 8300 5750
Connection ~ 7300 5750
Wire Wire Line
	8400 5250 8350 5250
Wire Wire Line
	8350 5250 8350 5950
Connection ~ 7350 5950
Wire Wire Line
	3100 4900 3150 4900
Wire Wire Line
	3150 4900 3150 6550
Wire Wire Line
	3150 6550 4600 6550
Wire Wire Line
	4600 6550 4600 7000
Wire Wire Line
	4100 4900 4150 4900
Wire Wire Line
	4150 4900 4150 6500
Wire Wire Line
	4150 6500 4700 6500
Wire Wire Line
	4700 6500 4700 7000
Wire Wire Line
	9100 4900 9150 4900
Wire Wire Line
	9150 4900 9150 6500
Wire Wire Line
	9150 6500 5200 6500
Wire Wire Line
	5200 6500 5200 7000
Wire Wire Line
	5100 6450 5100 7000
Wire Wire Line
	5100 6450 8150 6450
Wire Wire Line
	8150 6450 8150 4900
Wire Wire Line
	8150 4900 8100 4900
Wire Wire Line
	5000 6400 5000 7000
Wire Wire Line
	5000 6400 7150 6400
Wire Wire Line
	7150 6400 7150 4900
Wire Wire Line
	7150 4900 7100 4900
Wire Wire Line
	6100 4900 6150 4900
Wire Wire Line
	6150 4900 6150 6350
Wire Wire Line
	6150 6350 4900 6350
Wire Wire Line
	4900 6350 4900 7000
Wire Wire Line
	5100 4900 5150 4900
Wire Wire Line
	5150 4900 5150 6300
Wire Wire Line
	5150 6300 4800 6300
Wire Wire Line
	4800 6300 4800 7000
Wire Wire Line
	750  1800 750  1550
Wire Wire Line
	750  1550 800  1550
Wire Wire Line
	750  1800 6350 1800
Wire Wire Line
	1550 1800 1550 1550
Wire Wire Line
	1550 1550 1600 1550
Wire Wire Line
	2350 1800 2350 1550
Wire Wire Line
	2350 1550 2400 1550
Connection ~ 1550 1800
Wire Wire Line
	3200 1550 3150 1550
Wire Wire Line
	3150 1550 3150 1800
Connection ~ 2350 1800
Wire Wire Line
	3950 1800 3950 1550
Wire Wire Line
	3950 1550 4000 1550
Connection ~ 3150 1800
Wire Wire Line
	4800 1550 4750 1550
Wire Wire Line
	4750 1550 4750 1800
Connection ~ 3950 1800
Wire Wire Line
	5600 1550 5550 1550
Wire Wire Line
	5550 1550 5550 1800
Connection ~ 4750 1800
Wire Wire Line
	6400 1550 6350 1550
Wire Wire Line
	6350 1550 6350 1800
Connection ~ 5550 1800
Wire Wire Line
	800  1450 750  1450
Wire Wire Line
	750  1450 750  1150
Wire Wire Line
	750  1150 3350 1150
Wire Wire Line
	3450 1200 1550 1200
Wire Wire Line
	1550 1200 1550 1450
Wire Wire Line
	1550 1450 1600 1450
Wire Wire Line
	2400 1450 2350 1450
Wire Wire Line
	2350 1450 2350 1250
Wire Wire Line
	2350 1250 3550 1250
Wire Wire Line
	3650 1300 3150 1300
Wire Wire Line
	3150 1300 3150 1450
Wire Wire Line
	3150 1450 3200 1450
Wire Wire Line
	4000 1450 3950 1450
Wire Wire Line
	3950 1450 3950 1250
Wire Wire Line
	3950 1250 3750 1250
Wire Wire Line
	3850 1200 4750 1200
Wire Wire Line
	4750 1200 4750 1450
Wire Wire Line
	4750 1450 4800 1450
Wire Wire Line
	3950 1150 5550 1150
Wire Wire Line
	5550 1150 5550 1450
Wire Wire Line
	5550 1450 5600 1450
Wire Wire Line
	4050 1100 6350 1100
Wire Wire Line
	6350 1100 6350 1450
Wire Wire Line
	6350 1450 6400 1450
Wire Wire Line
	11050 3350 11100 3350
Wire Wire Line
	11100 4750 8350 4750
Wire Wire Line
	8350 4750 8350 5000
Wire Wire Line
	8350 5000 8400 5000
Wire Wire Line
	7400 5000 7350 5000
Wire Wire Line
	7350 5000 7350 4700
Wire Wire Line
	7350 4700 10350 4700
Wire Wire Line
	10150 3350 10100 3350
Wire Wire Line
	9150 3350 9200 3350
Wire Wire Line
	6350 4650 10250 4650
Wire Wire Line
	6350 4650 6350 5000
Wire Wire Line
	6350 5000 6400 5000
Wire Wire Line
	5400 5000 5350 5000
Wire Wire Line
	5350 5000 5350 4600
Wire Wire Line
	5350 4600 10100 4600
Wire Wire Line
	8250 3350 8200 3350
Wire Wire Line
	7250 3350 7300 3350
Wire Wire Line
	4350 4550 10050 4550
Wire Wire Line
	4350 4550 4350 5000
Wire Wire Line
	4350 5000 4400 5000
Wire Wire Line
	3400 5000 3350 5000
Wire Wire Line
	3350 5000 3350 4500
Wire Wire Line
	3350 4500 9950 4500
Wire Wire Line
	6350 3350 6300 3350
Wire Wire Line
	5350 3350 5400 3350
Wire Wire Line
	2350 4450 9850 4450
Wire Wire Line
	2350 4450 2350 5000
Wire Wire Line
	2350 5000 2400 5000
Wire Wire Line
	1400 5000 1350 5000
Wire Wire Line
	1350 5000 1350 4400
Wire Wire Line
	1350 4400 9750 4400
Wire Wire Line
	4450 3350 4400 3350
Wire Wire Line
	1400 1450 1450 1450
Wire Wire Line
	1450 1450 1450 4350
Wire Wire Line
	1450 4350 1300 4350
Wire Wire Line
	1300 4350 1300 4900
Wire Wire Line
	1300 4900 1400 4900
Wire Wire Line
	2200 1450 2250 1450
Wire Wire Line
	2250 1450 2250 4900
Wire Wire Line
	2250 4900 2400 4900
Wire Wire Line
	3400 4900 3300 4900
Wire Wire Line
	3300 4900 3300 4300
Wire Wire Line
	3300 4300 3050 4300
Wire Wire Line
	3050 4300 3050 1450
Wire Wire Line
	3050 1450 3000 1450
Wire Wire Line
	3800 1450 3850 1450
Wire Wire Line
	3850 1450 3850 1900
Wire Wire Line
	3850 1900 3100 1900
Wire Wire Line
	3100 1900 3100 4250
Wire Wire Line
	3100 4250 4300 4250
Wire Wire Line
	4300 4250 4300 4900
Wire Wire Line
	4300 4900 4400 4900
Wire Wire Line
	5400 4900 5300 4900
Wire Wire Line
	5300 4900 5300 4200
Wire Wire Line
	5300 4200 3150 4200
Wire Wire Line
	3150 4200 3150 1950
Wire Wire Line
	3150 1950 4650 1950
Wire Wire Line
	4650 1950 4650 1450
Wire Wire Line
	4650 1450 4600 1450
Wire Wire Line
	5400 1450 5450 1450
Wire Wire Line
	5450 1450 5450 2000
Wire Wire Line
	5450 2000 3200 2000
Wire Wire Line
	3200 2000 3200 4150
Wire Wire Line
	3200 4150 6300 4150
Wire Wire Line
	6300 4150 6300 4900
Wire Wire Line
	6300 4900 6400 4900
Wire Wire Line
	7250 4900 7400 4900
Wire Wire Line
	7250 4900 7250 4100
Wire Wire Line
	7250 4100 3250 4100
Wire Wire Line
	3250 4100 3250 2050
Wire Wire Line
	3250 2050 6250 2050
Wire Wire Line
	6250 2050 6250 1450
Wire Wire Line
	6250 1450 6200 1450
Wire Wire Line
	7000 1450 7050 1450
Wire Wire Line
	7050 1450 7050 2100
Wire Wire Line
	7050 2100 3300 2100
Wire Wire Line
	3300 2100 3300 4050
Wire Wire Line
	3300 4050 8300 4050
Wire Wire Line
	8300 4050 8300 4900
Wire Wire Line
	8300 4900 8400 4900
Wire Wire Line
	4450 4400 4450 3350
Wire Wire Line
	5400 3350 5400 4450
Wire Wire Line
	6350 4500 6350 3350
Wire Wire Line
	7300 3350 7300 4550
Wire Wire Line
	8250 4600 8250 3350
Wire Wire Line
	9200 3350 9200 4650
Wire Wire Line
	10150 4700 10150 3350
Wire Wire Line
	11100 3350 11100 4750
$Comp
L Conn_01x08 J107
U 1 1 5B6AA379
P 3950 2600
F 0 "J107" H 3950 3000 50  0000 C CNN
F 1 "Conn_01x08" H 3950 2100 50  0001 C CNN
F 2 "footprints:PH_1x8" H 3850 2900 50  0001 C CNN
F 3 "" H 3950 2600 50  0001 C CNN
	1    3950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2450 3650 3350
Wire Wire Line
	3650 3350 3800 3350
Wire Wire Line
	3750 2450 3750 3200
Wire Wire Line
	3750 3200 4700 3200
Wire Wire Line
	4700 3200 4700 3350
Wire Wire Line
	4700 3350 4750 3350
Wire Wire Line
	5650 3350 5650 3150
Wire Wire Line
	5650 3150 3850 3150
Wire Wire Line
	3850 3150 3850 2450
Wire Wire Line
	3950 2450 3950 3100
Wire Wire Line
	3950 3100 6600 3100
Wire Wire Line
	6600 3100 6600 3350
Wire Wire Line
	6600 3350 6650 3350
Wire Wire Line
	7600 3350 7550 3350
Wire Wire Line
	7550 3350 7550 3050
Wire Wire Line
	7550 3050 4050 3050
Wire Wire Line
	4050 3050 4050 2450
Wire Wire Line
	4150 2450 4150 3000
Wire Wire Line
	4150 3000 8500 3000
Wire Wire Line
	8500 3000 8500 3350
Wire Wire Line
	8500 3350 8550 3350
Wire Wire Line
	9500 3350 9450 3350
Wire Wire Line
	9450 3350 9450 2950
Wire Wire Line
	9450 2950 4250 2950
Wire Wire Line
	4250 2950 4250 2450
Wire Wire Line
	4350 2450 4350 2900
Wire Wire Line
	4350 2900 10400 2900
Wire Wire Line
	10400 2900 10400 3350
Wire Wire Line
	10400 3350 10450 3350
$Comp
L Conn_01x08 J105
U 1 1 5B6AD1BE
P 10600 2100
F 0 "J105" H 10600 2500 50  0000 C CNN
F 1 "Conn_01x08" H 10600 1600 50  0001 C CNN
F 2 "footprints:PH_1x8" H 10500 2400 50  0001 C CNN
F 3 "" H 10600 2100 50  0001 C CNN
	1    10600 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11000 2300 11000 2850
Wire Wire Line
	11000 2850 10350 2850
Wire Wire Line
	10350 2850 10350 3450
Wire Wire Line
	10350 3450 10450 3450
Wire Wire Line
	10900 2300 10900 2800
Wire Wire Line
	10900 2800 9400 2800
Wire Wire Line
	9400 2800 9400 3450
Wire Wire Line
	9400 3450 9500 3450
Wire Wire Line
	10800 2300 10800 2750
Wire Wire Line
	10800 2750 8450 2750
Wire Wire Line
	8450 2750 8450 3450
Wire Wire Line
	8450 3450 8550 3450
Wire Wire Line
	10700 2300 10700 2700
Wire Wire Line
	10700 2700 7500 2700
Wire Wire Line
	7500 2700 7500 3450
Wire Wire Line
	7500 3450 7600 3450
Wire Wire Line
	10600 2300 10600 2650
Wire Wire Line
	10600 2650 6550 2650
Wire Wire Line
	6550 2650 6550 3450
Wire Wire Line
	6550 3450 6650 3450
Wire Wire Line
	10500 2300 10500 2600
Wire Wire Line
	10500 2600 5600 2600
Wire Wire Line
	5600 2600 5600 3450
Wire Wire Line
	5600 3450 5700 3450
Wire Wire Line
	5650 3350 5700 3350
Wire Wire Line
	4750 3450 4650 3450
Wire Wire Line
	4650 3450 4650 2550
Wire Wire Line
	4650 2550 10400 2550
Wire Wire Line
	10400 2550 10400 2300
Wire Wire Line
	10300 2300 10300 2500
Wire Wire Line
	10300 2500 3500 2500
Wire Wire Line
	3500 2500 3500 3450
Wire Wire Line
	3500 3450 3800 3450
$Comp
L Conn_01x01 J108
U 1 1 5B6B1E3F
P 2500 3800
F 0 "J108" H 2500 3900 50  0000 C CNN
F 1 "Conn_01x01" H 2500 3700 50  0001 C CNN
F 2 "footprints:PH_1x1" H 2400 3800 50  0001 C CNN
F 3 "" H 2500 3800 50  0001 C CNN
	1    2500 3800
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J109
U 1 1 5B6B244E
P 2500 4000
F 0 "J109" H 2500 4100 50  0000 C CNN
F 1 "Conn_01x01" H 2500 3900 50  0001 C CNN
F 2 "footprints:PH_1x1" H 2400 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0001 C CNN
	1    2500 4000
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J110
U 1 1 5B6B2727
P 2500 4200
F 0 "J110" H 2500 4300 50  0000 C CNN
F 1 "Conn_01x01" H 2500 4100 50  0001 C CNN
F 2 "footprints:PH_1x1" H 2400 4200 50  0001 C CNN
F 3 "" H 2500 4200 50  0001 C CNN
	1    2500 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 3800 2750 3800
Wire Wire Line
	2750 3800 2750 3900
Wire Wire Line
	2750 3900 10300 3900
Wire Wire Line
	3650 3900 3650 3600
Wire Wire Line
	3650 3600 3800 3600
Wire Wire Line
	2700 4000 2750 4000
Wire Wire Line
	2750 4000 2750 3950
Wire Wire Line
	2750 3950 10350 3950
Wire Wire Line
	3700 3950 3700 3700
Wire Wire Line
	3700 3700 3800 3700
Wire Wire Line
	2700 4200 2800 4200
Wire Wire Line
	2800 4200 2800 4000
Wire Wire Line
	2800 4000 10400 4000
Wire Wire Line
	3750 4000 3750 3800
Wire Wire Line
	3750 3800 3800 3800
Wire Wire Line
	4600 3900 4600 3600
Wire Wire Line
	4600 3600 4750 3600
Connection ~ 3650 3900
Wire Wire Line
	4650 3950 4650 3700
Wire Wire Line
	4650 3700 4750 3700
Connection ~ 3700 3950
Wire Wire Line
	4700 4000 4700 3800
Wire Wire Line
	4700 3800 4750 3800
Connection ~ 3750 4000
Wire Wire Line
	5550 3900 5550 3600
Wire Wire Line
	5550 3600 5700 3600
Connection ~ 4600 3900
Wire Wire Line
	5600 3950 5600 3700
Wire Wire Line
	5600 3700 5700 3700
Connection ~ 4650 3950
Wire Wire Line
	5650 4000 5650 3800
Wire Wire Line
	5650 3800 5700 3800
Connection ~ 4700 4000
Wire Wire Line
	6500 3900 6500 3600
Wire Wire Line
	6500 3600 6650 3600
Connection ~ 5550 3900
Wire Wire Line
	6550 3950 6550 3700
Wire Wire Line
	6550 3700 6650 3700
Connection ~ 5600 3950
Wire Wire Line
	6600 4000 6600 3800
Wire Wire Line
	6600 3800 6650 3800
Connection ~ 5650 4000
Wire Wire Line
	7450 3900 7450 3600
Wire Wire Line
	7450 3600 7600 3600
Connection ~ 6500 3900
Wire Wire Line
	7500 3950 7500 3700
Wire Wire Line
	7500 3700 7600 3700
Connection ~ 6550 3950
Wire Wire Line
	7550 4000 7550 3800
Wire Wire Line
	7550 3800 7600 3800
Connection ~ 6600 4000
Wire Wire Line
	8400 3900 8400 3600
Wire Wire Line
	8400 3600 8550 3600
Connection ~ 7450 3900
Wire Wire Line
	8550 3700 8450 3700
Wire Wire Line
	8450 3700 8450 3950
Connection ~ 7500 3950
Wire Wire Line
	8500 4000 8500 3800
Wire Wire Line
	8500 3800 8550 3800
Connection ~ 7550 4000
Wire Wire Line
	9350 3900 9350 3600
Wire Wire Line
	9350 3600 9500 3600
Connection ~ 8400 3900
Wire Wire Line
	9500 3700 9400 3700
Wire Wire Line
	9400 3700 9400 3950
Connection ~ 8450 3950
Wire Wire Line
	9450 4000 9450 3800
Wire Wire Line
	9450 3800 9500 3800
Connection ~ 8500 4000
Wire Wire Line
	10300 3900 10300 3600
Wire Wire Line
	10300 3600 10450 3600
Connection ~ 9350 3900
Wire Wire Line
	10450 3700 10350 3700
Wire Wire Line
	10350 3700 10350 3950
Connection ~ 9400 3950
Wire Wire Line
	10400 4000 10400 3800
Wire Wire Line
	10400 3800 10450 3800
Connection ~ 9450 4000
$Comp
L Conn_01x08 J106
U 1 1 5B6B81F9
P 3950 2250
F 0 "J106" H 3950 2650 50  0000 C CNN
F 1 "Conn_01x08" H 3950 1750 50  0001 C CNN
F 2 "footprints:PH_1x8" H 3850 2550 50  0001 C CNN
F 3 "" H 3950 2250 50  0001 C CNN
	1    3950 2250
	0    -1   -1   0   
$EndComp
Connection ~ 3650 2800
Connection ~ 3750 2800
Connection ~ 3850 2800
Connection ~ 3950 2800
Connection ~ 4050 2800
Connection ~ 4150 2800
Connection ~ 4250 2800
Connection ~ 4350 2800
$Comp
L Conn_01x08 J101
U 1 1 5B6BB3EC
P 3650 550
F 0 "J101" H 3650 950 50  0000 C CNN
F 1 "Conn_01x08" H 3650 50  50  0001 C CNN
F 2 "footprints:PH_1x8" H 3550 850 50  0001 C CNN
F 3 "" H 3650 550 50  0001 C CNN
	1    3650 550 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 1150 3350 750 
Connection ~ 3350 1050
Wire Wire Line
	3450 750  3450 1200
Connection ~ 3450 1050
Wire Wire Line
	3550 1250 3550 750 
Connection ~ 3550 1050
Wire Wire Line
	3650 750  3650 1300
Connection ~ 3650 1050
Wire Wire Line
	3750 1250 3750 750 
Connection ~ 3750 1050
Wire Wire Line
	3850 750  3850 1200
Connection ~ 3850 1050
Wire Wire Line
	3950 750  3950 1150
Connection ~ 3950 1050
Wire Wire Line
	4050 750  4050 1100
Connection ~ 4050 1050
Connection ~ 4500 6650
Connection ~ 4600 6650
Connection ~ 4700 6650
Connection ~ 4800 6650
Connection ~ 4900 6650
Connection ~ 5000 6650
Connection ~ 5100 6650
Connection ~ 5200 6650
$Comp
L Conn_01x08 J115
U 1 1 5B6FA851
P 2600 3300
F 0 "J115" H 2600 3700 50  0000 C CNN
F 1 "Conn_01x08" H 2600 2800 50  0001 C CNN
F 2 "footprints:PH_1x8" H 2500 3600 50  0001 C CNN
F 3 "" H 2600 3300 50  0001 C CNN
	1    2600 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	3000 3100 3000 3050
Wire Wire Line
	3000 3050 3300 3050
Connection ~ 3300 3050
Wire Wire Line
	3250 3000 2900 3000
Wire Wire Line
	2900 3000 2900 3100
Connection ~ 3250 3000
Wire Wire Line
	2800 3100 2800 2950
Wire Wire Line
	2800 2950 3200 2950
Connection ~ 3200 2950
Wire Wire Line
	3150 2900 2700 2900
Wire Wire Line
	2700 2900 2700 3100
Connection ~ 3150 2900
Wire Wire Line
	2600 3100 2600 2850
Wire Wire Line
	2600 2850 3100 2850
Connection ~ 3100 2850
Wire Wire Line
	2500 2800 2500 3100
Wire Wire Line
	2400 3100 2400 3000
Wire Wire Line
	2300 3100 2300 3050
Wire Wire Line
	2300 3050 1450 3050
Connection ~ 1450 3050
Wire Wire Line
	2400 3000 2250 3000
Connection ~ 2250 3000
Wire Wire Line
	2500 2800 3050 2800
Connection ~ 3050 2800
$Comp
L Conn_01x08 J116
U 1 1 5B702250
P 10050 5150
F 0 "J116" H 10050 5550 50  0000 C CNN
F 1 "Conn_01x08" H 10050 4650 50  0001 C CNN
F 2 "footprints:PH_1x8" H 9950 5450 50  0001 C CNN
F 3 "" H 10050 5150 50  0001 C CNN
	1    10050 5150
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 4400 9750 4950
Connection ~ 4450 4400
Wire Wire Line
	9850 4450 9850 4950
Connection ~ 5400 4450
Wire Wire Line
	9950 4500 9950 4950
Connection ~ 6350 4500
Wire Wire Line
	10050 4550 10050 4950
Connection ~ 7300 4550
Wire Wire Line
	10100 4600 10100 4950
Wire Wire Line
	10100 4950 10150 4950
Connection ~ 8250 4600
Wire Wire Line
	10250 4650 10250 4950
Connection ~ 9200 4650
Wire Wire Line
	10350 4700 10350 4950
Connection ~ 10150 4700
Wire Wire Line
	10450 4750 10450 4950
Connection ~ 10450 4750
$EndSCHEMATC