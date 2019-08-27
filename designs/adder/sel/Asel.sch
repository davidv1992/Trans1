EESchema Schematic File Version 2
LIBS:core
LIBS:power
LIBS:sel-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 25
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
L 2N7000 Q1001
U 1 1 5B670F62
P 2000 1250
AR Path="/5B670ED5/5B670F62" Ref="Q1001"  Part="1" 
AR Path="/5B672A17/5B670F62" Ref="Q1101"  Part="1" 
AR Path="/5B6738C6/5B670F62" Ref="Q1201"  Part="1" 
AR Path="/5B6738D4/5B670F62" Ref="Q1301"  Part="1" 
AR Path="/5B6749F6/5B670F62" Ref="Q1401"  Part="1" 
AR Path="/5B674A04/5B670F62" Ref="Q1501"  Part="1" 
AR Path="/5B674A12/5B670F62" Ref="Q1601"  Part="1" 
AR Path="/5B674A20/5B670F62" Ref="Q1701"  Part="1" 
F 0 "Q1701" H 2200 1250 50  0000 L CNN
F 1 "2N7000" H 2200 1325 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2200 1175 50  0001 L CIN
F 3 "" H 2000 1250 50  0001 L CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 Q1002
U 1 1 5B670FA2
P 2000 1650
AR Path="/5B670ED5/5B670FA2" Ref="Q1002"  Part="1" 
AR Path="/5B672A17/5B670FA2" Ref="Q1102"  Part="1" 
AR Path="/5B6738C6/5B670FA2" Ref="Q1202"  Part="1" 
AR Path="/5B6738D4/5B670FA2" Ref="Q1302"  Part="1" 
AR Path="/5B6749F6/5B670FA2" Ref="Q1402"  Part="1" 
AR Path="/5B674A04/5B670FA2" Ref="Q1502"  Part="1" 
AR Path="/5B674A12/5B670FA2" Ref="Q1602"  Part="1" 
AR Path="/5B674A20/5B670FA2" Ref="Q1702"  Part="1" 
F 0 "Q1702" H 2200 1650 50  0000 L CNN
F 1 "2N7000" H 2200 1725 50  0001 L CNN
F 2 "footprints:TO-92-FET" H 2200 1575 50  0001 L CIN
F 3 "" H 2000 1650 50  0001 L CNN
	1    2000 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1002
U 1 1 5B670FC5
P 2100 1850
AR Path="/5B670ED5/5B670FC5" Ref="#PWR1002"  Part="1" 
AR Path="/5B672A17/5B670FC5" Ref="#PWR1102"  Part="1" 
AR Path="/5B6738C6/5B670FC5" Ref="#PWR1202"  Part="1" 
AR Path="/5B6738D4/5B670FC5" Ref="#PWR1302"  Part="1" 
AR Path="/5B6749F6/5B670FC5" Ref="#PWR1402"  Part="1" 
AR Path="/5B674A04/5B670FC5" Ref="#PWR1502"  Part="1" 
AR Path="/5B674A12/5B670FC5" Ref="#PWR1602"  Part="1" 
AR Path="/5B674A20/5B670FC5" Ref="#PWR1702"  Part="1" 
F 0 "#PWR1702" H 2100 1600 50  0001 C CNN
F 1 "GND" H 2100 1700 50  0000 C CNN
F 2 "" H 2100 1850 50  0001 C CNN
F 3 "" H 2100 1850 50  0001 C CNN
	1    2100 1850
	1    0    0    -1  
$EndComp
$Comp
L R R1001
U 1 1 5B670FDD
P 2100 900
AR Path="/5B670ED5/5B670FDD" Ref="R1001"  Part="1" 
AR Path="/5B672A17/5B670FDD" Ref="R1101"  Part="1" 
AR Path="/5B6738C6/5B670FDD" Ref="R1201"  Part="1" 
AR Path="/5B6738D4/5B670FDD" Ref="R1301"  Part="1" 
AR Path="/5B6749F6/5B670FDD" Ref="R1401"  Part="1" 
AR Path="/5B674A04/5B670FDD" Ref="R1501"  Part="1" 
AR Path="/5B674A12/5B670FDD" Ref="R1601"  Part="1" 
AR Path="/5B674A20/5B670FDD" Ref="R1701"  Part="1" 
F 0 "R1701" V 2180 900 50  0000 C CNN
F 1 "R" V 2100 900 50  0000 C CNN
F 2 "footprints:R_small" V 2030 900 50  0001 C CNN
F 3 "" H 2100 900 50  0001 C CNN
	1    2100 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR1001
U 1 1 5B671006
P 2100 750
AR Path="/5B670ED5/5B671006" Ref="#PWR1001"  Part="1" 
AR Path="/5B672A17/5B671006" Ref="#PWR1101"  Part="1" 
AR Path="/5B6738C6/5B671006" Ref="#PWR1201"  Part="1" 
AR Path="/5B6738D4/5B671006" Ref="#PWR1301"  Part="1" 
AR Path="/5B6749F6/5B671006" Ref="#PWR1401"  Part="1" 
AR Path="/5B674A04/5B671006" Ref="#PWR1501"  Part="1" 
AR Path="/5B674A12/5B671006" Ref="#PWR1601"  Part="1" 
AR Path="/5B674A20/5B671006" Ref="#PWR1701"  Part="1" 
F 0 "#PWR1701" H 2100 600 50  0001 C CNN
F 1 "VCC" H 2100 900 50  0000 C CNN
F 2 "" H 2100 750 50  0001 C CNN
F 3 "" H 2100 750 50  0001 C CNN
	1    2100 750 
	1    0    0    -1  
$EndComp
Text HLabel 1800 1650 0    60   Input ~ 0
A
Text HLabel 1800 1250 0    60   Input ~ 0
Aen
Text HLabel 2250 1050 2    60   Input ~ 0
Asel
Wire Wire Line
	2100 1050 2250 1050
$EndSCHEMATC
