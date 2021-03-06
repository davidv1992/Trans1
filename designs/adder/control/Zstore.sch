EESchema Schematic File Version 2
LIBS:core
LIBS:power
LIBS:control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L 2N7000 Q503
U 1 1 5D397024
P 2750 1600
F 0 "Q503" H 2950 1600 50  0000 L CNN
F 1 "2N7000" H 2950 1675 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2950 1525 50  0001 L CIN
F 3 "" H 2750 1600 50  0001 L CNN
	1    2750 1600
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q502
U 1 1 5D397063
P 2150 1600
F 0 "Q502" H 2350 1600 50  0000 L CNN
F 1 "2N7000" H 2350 1675 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2350 1525 50  0001 L CIN
F 3 "" H 2150 1600 50  0001 L CNN
	1    2150 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 1400 2350 1400
Wire Wire Line
	2350 1400 2550 1600
Wire Wire Line
	2350 1600 2550 1400
Wire Wire Line
	2550 1400 3350 1400
$Comp
L R R501
U 1 1 5D3970E4
P 2050 1250
F 0 "R501" V 2130 1250 50  0000 C CNN
F 1 "1k" V 2050 1250 50  0000 C CNN
F 2 "footprints:R_small" V 1980 1250 50  0001 C CNN
F 3 "" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L R R502
U 1 1 5D397115
P 2850 1250
F 0 "R502" V 2930 1250 50  0000 C CNN
F 1 "1k" V 2850 1250 50  0000 C CNN
F 2 "footprints:R_small" V 2780 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR076
U 1 1 5D397152
P 2050 1100
F 0 "#PWR076" H 2050 950 50  0001 C CNN
F 1 "VCC" H 2050 1250 50  0000 C CNN
F 2 "" H 2050 1100 50  0001 C CNN
F 3 "" H 2050 1100 50  0001 C CNN
	1    2050 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR077
U 1 1 5D39716E
P 2850 1100
F 0 "#PWR077" H 2850 950 50  0001 C CNN
F 1 "VCC" H 2850 1250 50  0000 C CNN
F 2 "" H 2850 1100 50  0001 C CNN
F 3 "" H 2850 1100 50  0001 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q501
U 1 1 5D3971A2
P 1550 1600
F 0 "Q501" H 1750 1600 50  0000 L CNN
F 1 "2N7000" H 1750 1675 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 1750 1525 50  0001 L CIN
F 3 "" H 1550 1600 50  0001 L CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q506
U 1 1 5D3971E9
P 1550 2000
F 0 "Q506" H 1750 2000 50  0000 L CNN
F 1 "2N7000" H 1750 2075 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 1750 1925 50  0001 L CIN
F 3 "" H 1550 2000 50  0001 L CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q504
U 1 1 5D397242
P 3350 1600
F 0 "Q504" H 3550 1600 50  0000 L CNN
F 1 "2N7000" H 3550 1675 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3550 1525 50  0001 L CIN
F 3 "" H 3350 1600 50  0001 L CNN
	1    3350 1600
	-1   0    0    -1  
$EndComp
$Comp
L 2N7000 Q507
U 1 1 5D397283
P 3350 2000
F 0 "Q507" H 3550 2000 50  0000 L CNN
F 1 "2N7000" H 3550 2075 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3550 1925 50  0001 L CIN
F 3 "" H 3350 2000 50  0001 L CNN
	1    3350 2000
	-1   0    0    -1  
$EndComp
Connection ~ 3250 1800
Connection ~ 1650 1800
Connection ~ 2050 1400
Connection ~ 2850 1400
Wire Wire Line
	1650 2200 3250 2200
Wire Wire Line
	2050 2200 2050 1800
Wire Wire Line
	2850 2200 2850 1800
Connection ~ 2050 2200
Connection ~ 2850 2200
$Comp
L GND #PWR078
U 1 1 5D39732B
P 2450 2200
F 0 "#PWR078" H 2450 1950 50  0001 C CNN
F 1 "GND" H 2450 2050 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
Connection ~ 2450 2200
Wire Wire Line
	3550 2000 3550 2450
Wire Wire Line
	3550 2450 1350 2450
Wire Wire Line
	1350 2450 1350 2000
Text HLabel 1350 2000 0    60   Input ~ 0
clk
Text HLabel 1550 1400 0    60   Input ~ 0
~Q
Text HLabel 3350 1400 2    60   Input ~ 0
Q
Connection ~ 1650 1400
Connection ~ 3250 1400
$Comp
L 2N7000 Q505
U 1 1 5D3973D6
P 3900 1600
F 0 "Q505" H 4100 1600 50  0000 L CNN
F 1 "2N7000" H 4100 1675 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4100 1525 50  0001 L CIN
F 3 "" H 3900 1600 50  0001 L CNN
	1    3900 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 1600 3550 1400
Wire Wire Line
	3550 1400 3800 1400
Text HLabel 1350 1600 0    60   Input ~ 0
D
Text HLabel 4100 1600 2    60   Input ~ 0
D
$Comp
L GND #PWR079
U 1 1 5D397454
P 3800 1800
F 0 "#PWR079" H 3800 1550 50  0001 C CNN
F 1 "GND" H 3800 1650 50  0000 C CNN
F 2 "" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L R R503
U 1 1 5D39747A
P 3800 1250
F 0 "R503" V 3880 1250 50  0000 C CNN
F 1 "1k" V 3800 1250 50  0000 C CNN
F 2 "footprints:R_small" V 3730 1250 50  0001 C CNN
F 3 "" H 3800 1250 50  0001 C CNN
	1    3800 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR080
U 1 1 5D3974E0
P 3800 1100
F 0 "#PWR080" H 3800 950 50  0001 C CNN
F 1 "VCC" H 3800 1250 50  0000 C CNN
F 2 "" H 3800 1100 50  0001 C CNN
F 3 "" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
