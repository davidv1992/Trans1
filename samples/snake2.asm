	MOV 0x22, A
	MOV A, [0]
	MOV 1, A
	MOV A, [3]
	
ST:	MOV R1, A
	MOV A, [2]
	JMP DS
	
R1: SLP

	MOV R2, A
	MOV A, [2]
	JMP DS

R2:	MOV [0x48], A
	MOV [3], B
	JZA L3
	MOV 0x7, B
	SHR A, A
	JZA L3
	MOV 0x1, B
	SHR A, A
	JZA L3
	MOV 0x70, B
	SHR A, A
	JZA L3
	MOV 0x10, B
L3:	MOV B, [3]
	MOV [0], A
	ADD A
	MOV 0x77, B
	AND A
	MOV A, [0]
	JMP ST

DS:	MOV [0], A
	SHR A, A
	SHR A, A
	SHR A, A
	SHR A, A
	MOV 0x40, B
	ADD A
	MOV A, [1]
	MOV [0], A
	MOV 0xF, B
	AND A
	MOV 1, B
	JZA L2
L1:	SHL B, B
	DEC A, A
	JNZA L1
L2:	MOV [1], A
	MOV [A], A	#10
	XOR A		#83
	MOV [1], B	#51
	MOV A, [B]	#23?
	MOV [2], A	#12
	JMP [A]		#2F
