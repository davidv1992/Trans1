EESchema Schematic File Version 2
LIBS:core
LIBS:power
LIBS:core-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
L 2N7000 Q?
U 1 1 5A6E3477
P 3075 1825
F 0 "Q?" H 3275 1825 50  0000 L CNN
F 1 "2N7000" H 3275 1900 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3275 1750 50  0001 L CIN
F 3 "" H 3075 1825 50  0001 L CNN
	1    3075 1825
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q?
U 1 1 5A6E3559
P 3075 2225
F 0 "Q?" H 3275 2225 50  0000 L CNN
F 1 "2N7000" H 3275 2300 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 3275 2150 50  0001 L CIN
F 3 "" H 3075 2225 50  0001 L CNN
	1    3075 2225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A6E359A
P 3175 2425
F 0 "#PWR?" H 3175 2175 50  0001 C CNN
F 1 "GND" H 3175 2275 50  0000 C CNN
F 2 "" H 3175 2425 50  0001 C CNN
F 3 "" H 3175 2425 50  0001 C CNN
	1    3175 2425
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q?
U 1 1 5A6E36D9
P 3875 1825
F 0 "Q?" H 4075 1825 50  0000 L CNN
F 1 "2N7000" H 4075 1900 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4075 1750 50  0001 L CIN
F 3 "" H 3875 1825 50  0001 L CNN
	1    3875 1825
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q?
U 1 1 5A6E36E0
P 3875 2225
F 0 "Q?" H 4075 2225 50  0000 L CNN
F 1 "2N7000" H 4075 2300 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4075 2150 50  0001 L CIN
F 3 "" H 3875 2225 50  0001 L CNN
	1    3875 2225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A6E36E7
P 3975 2425
F 0 "#PWR?" H 3975 2175 50  0001 C CNN
F 1 "GND" H 3975 2275 50  0000 C CNN
F 2 "" H 3975 2425 50  0001 C CNN
F 3 "" H 3975 2425 50  0001 C CNN
	1    3975 2425
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q?
U 1 1 5A6E37D5
P 4675 1825
F 0 "Q?" H 4875 1825 50  0000 L CNN
F 1 "2N7000" H 4875 1900 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4875 1750 50  0001 L CIN
F 3 "" H 4675 1825 50  0001 L CNN
	1    4675 1825
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q?
U 1 1 5A6E37DC
P 4675 2225
F 0 "Q?" H 4875 2225 50  0000 L CNN
F 1 "2N7000" H 4875 2300 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 4875 2150 50  0001 L CIN
F 3 "" H 4675 2225 50  0001 L CNN
	1    4675 2225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A6E37E3
P 4775 2425
F 0 "#PWR?" H 4775 2175 50  0001 C CNN
F 1 "GND" H 4775 2275 50  0000 C CNN
F 2 "" H 4775 2425 50  0001 C CNN
F 3 "" H 4775 2425 50  0001 C CNN
	1    4775 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 1625 4775 1625
Connection ~ 3975 1625
Text HLabel 2875 2225 0    60   Input ~ 0
S-1
Text HLabel 3675 2225 0    60   Input ~ 0
S0
Text HLabel 4475 2225 0    60   Input ~ 0
S1
Text HLabel 2875 1825 0    60   Input ~ 0
SHR
Text HLabel 4475 1825 0    60   Input ~ 0
SHL
Text HLabel 3675 1825 0    60   Input ~ 0
ADD
Text HLabel 3975 1425 0    60   Input ~ 0
OUT
Wire Wire Line
	3975 1425 3975 1625
$EndSCHEMATC