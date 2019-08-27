EESchema Schematic File Version 2
LIBS:core
LIBS:power
LIBS:control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L 2N7000 Q301
U 1 1 5D3867EA
P 1300 1850
F 0 "Q301" H 1500 1850 50  0000 L CNN
F 1 "2N7000" H 1500 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 1500 1775 50  0001 L CIN
F 3 "" H 1300 1850 50  0001 L CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q302
U 1 1 5D386883
P 2000 1850
F 0 "Q302" H 2200 1850 50  0000 L CNN
F 1 "2N7000" H 2200 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2200 1775 50  0001 L CIN
F 3 "" H 2000 1850 50  0001 L CNN
	1    2000 1850
	-1   0    0    -1  
$EndComp
$Comp
L 2N7000 Q307
U 1 1 5D386ACB
P 2000 2250
F 0 "Q307" H 2200 2250 50  0000 L CNN
F 1 "2N7000" H 2200 2325 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2200 2175 50  0001 L CIN
F 3 "" H 2000 2250 50  0001 L CNN
	1    2000 2250
	-1   0    0    -1  
$EndComp
Connection ~ 1900 2050
Connection ~ 1900 2450
$Comp
L 2N7000 Q308
U 1 1 5D386B0C
P 2000 2650
F 0 "Q308" H 2200 2650 50  0000 L CNN
F 1 "2N7000" H 2200 2725 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2200 2575 50  0001 L CIN
F 3 "" H 2000 2650 50  0001 L CNN
	1    2000 2650
	-1   0    0    -1  
$EndComp
Text HLabel 2200 1850 2    60   Input ~ 0
b1
Text HLabel 2200 2250 2    60   Input ~ 0
~RSH
Text HLabel 2200 2650 2    60   Input ~ 0
~LSH
Text HLabel 1100 1850 0    60   Input ~ 0
b0
Wire Wire Line
	1400 2050 1400 2850
Wire Wire Line
	1400 2850 1900 2850
$Comp
L GND #PWR062
U 1 1 5D386B97
P 1650 2850
F 0 "#PWR062" H 1650 2600 50  0001 C CNN
F 1 "GND" H 1650 2700 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 5D386BC5
P 1650 1500
F 0 "R301" V 1730 1500 50  0000 C CNN
F 1 "1k" V 1650 1500 50  0000 C CNN
F 2 "footprints:R_small" V 1580 1500 50  0001 C CNN
F 3 "" H 1650 1500 50  0001 C CNN
	1    1650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1650 2000 1650
Connection ~ 1650 1650
$Comp
L VCC #PWR063
U 1 1 5D386C78
P 1650 1350
F 0 "#PWR063" H 1650 1200 50  0001 C CNN
F 1 "VCC" H 1650 1500 50  0000 C CNN
F 2 "" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
Text HLabel 2000 1650 2    60   Input ~ 0
Ben
Connection ~ 1900 1650
$Comp
L 2N7000 Q303
U 1 1 5D386F1A
P 3250 1850
F 0 "Q303" H 3450 1850 50  0000 L CNN
F 1 "2N7000" H 3450 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3450 1775 50  0001 L CIN
F 3 "" H 3250 1850 50  0001 L CNN
	1    3250 1850
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q304
U 1 1 5D387005
P 4000 1850
F 0 "Q304" H 4200 1850 50  0000 L CNN
F 1 "2N7000" H 4200 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4200 1775 50  0001 L CIN
F 3 "" H 4000 1850 50  0001 L CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
Text HLabel 3050 1850 0    60   Input ~ 0
b0
Text HLabel 3800 1850 0    60   Input ~ 0
~b1
$Comp
L 2N7000 Q305
U 1 1 5D387272
P 4800 1850
F 0 "Q305" H 5000 1850 50  0000 L CNN
F 1 "2N7000" H 5000 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 5000 1775 50  0001 L CIN
F 3 "" H 4800 1850 50  0001 L CNN
	1    4800 1850
	1    0    0    -1  
$EndComp
Text HLabel 4600 1850 0    60   Input ~ 0
RSH
$Comp
L 2N7000 Q306
U 1 1 5D3872FE
P 5450 1850
F 0 "Q306" H 5650 1850 50  0000 L CNN
F 1 "2N7000" H 5650 1925 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 5650 1775 50  0001 L CIN
F 3 "" H 5450 1850 50  0001 L CNN
	1    5450 1850
	-1   0    0    -1  
$EndComp
Text HLabel 5650 1850 2    60   Input ~ 0
LSH
Wire Wire Line
	3350 2050 5350 2050
Connection ~ 4100 2050
Connection ~ 4900 2050
$Comp
L GND #PWR064
U 1 1 5D387389
P 4400 2050
F 0 "#PWR064" H 4400 1800 50  0001 C CNN
F 1 "GND" H 4400 1900 50  0000 C CNN
F 2 "" H 4400 2050 50  0001 C CNN
F 3 "" H 4400 2050 50  0001 C CNN
	1    4400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1650 5450 1650
Connection ~ 4100 1650
Connection ~ 4900 1650
$Comp
L R R302
U 1 1 5D387429
P 4400 1500
F 0 "R302" V 4480 1500 50  0000 C CNN
F 1 "1k" V 4400 1500 50  0000 C CNN
F 2 "footprints:R_small" V 4330 1500 50  0001 C CNN
F 3 "" H 4400 1500 50  0001 C CNN
	1    4400 1500
	1    0    0    -1  
$EndComp
Connection ~ 4400 1650
$Comp
L VCC #PWR065
U 1 1 5D3874C2
P 4400 1350
F 0 "#PWR065" H 4400 1200 50  0001 C CNN
F 1 "VCC" H 4400 1500 50  0000 C CNN
F 2 "" H 4400 1350 50  0001 C CNN
F 3 "" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
Connection ~ 4400 2050
Text HLabel 5450 1650 2    60   Input ~ 0
~B~en
Connection ~ 5350 1650
$Comp
L 2N7000 Q309
U 1 1 5D3878B0
P 3250 2950
F 0 "Q309" H 3450 2950 50  0000 L CNN
F 1 "2N7000" H 3450 3025 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3450 2875 50  0001 L CIN
F 3 "" H 3250 2950 50  0001 L CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
Text HLabel 3050 2950 0    60   Input ~ 0
~b0
Text HLabel 3800 2950 0    60   Input ~ 0
~b1
$Comp
L 2N7000 Q310
U 1 1 5D38793C
P 4000 2950
F 0 "Q310" H 4200 2950 50  0000 L CNN
F 1 "2N7000" H 4200 3025 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4200 2875 50  0001 L CIN
F 3 "" H 4000 2950 50  0001 L CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
Text HLabel 4600 2950 0    60   Input ~ 0
RSH
$Comp
L 2N7000 Q311
U 1 1 5D3879A2
P 4800 2950
F 0 "Q311" H 5000 2950 50  0000 L CNN
F 1 "2N7000" H 5000 3025 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 5000 2875 50  0001 L CIN
F 3 "" H 4800 2950 50  0001 L CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q312
U 1 1 5D387A11
P 5450 2950
F 0 "Q312" H 5650 2950 50  0000 L CNN
F 1 "2N7000" H 5650 3025 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 5650 2875 50  0001 L CIN
F 3 "" H 5450 2950 50  0001 L CNN
	1    5450 2950
	-1   0    0    -1  
$EndComp
Text HLabel 5650 2950 2    60   Input ~ 0
LSH
Wire Wire Line
	3350 2750 5450 2750
Connection ~ 4100 2750
Connection ~ 4900 2750
Wire Wire Line
	3350 3150 5350 3150
Connection ~ 4100 3150
Connection ~ 4900 3150
$Comp
L GND #PWR066
U 1 1 5D387B8A
P 4400 3150
F 0 "#PWR066" H 4400 2900 50  0001 C CNN
F 1 "GND" H 4400 3000 50  0000 C CNN
F 2 "" H 4400 3150 50  0001 C CNN
F 3 "" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Connection ~ 4400 3150
$Comp
L R R303
U 1 1 5D387BBC
P 4400 2600
F 0 "R303" V 4480 2600 50  0000 C CNN
F 1 "1k" V 4400 2600 50  0000 C CNN
F 2 "footprints:R_small" V 4330 2600 50  0001 C CNN
F 3 "" H 4400 2600 50  0001 C CNN
	1    4400 2600
	1    0    0    -1  
$EndComp
Connection ~ 4400 2750
$Comp
L VCC #PWR067
U 1 1 5D387C1D
P 4400 2450
F 0 "#PWR067" H 4400 2300 50  0001 C CNN
F 1 "VCC" H 4400 2600 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
Text HLabel 5450 2750 2    60   Input ~ 0
1en
Connection ~ 5350 2750
Connection ~ 1650 2850
$EndSCHEMATC
