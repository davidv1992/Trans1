# Program setup
	MOV 3, A		#0x03
	MOV 3, B		#0x43
	MOV A, [0]		#0x30
	MOV B, [1]		#0x71
# Mult setup
	MOV 0, A		#0x00
	MOV A, [2]		#0x32
	MOV 3, A		#0x03
	MOV A, [3]		#0x33
# Extract lowest bit of [1]
L1:	MOV [1], B 		#0x51			0x88
	SHR B, B		#0xE5
	MOV B, [1]		#0x71
	MOV [0], B		#0x50
	JNC L2			#0x6A 0x91
# Add [0] to results in [2]
	MOV [2], A		#0x12
	ADD A			#0x80
	MOV A, [2]		#0x32
# Double [0]
L2:	SHL B, B		#0xE4
	MOV B, [0]		#0x70
#Dec counter in [3] and loop
	MOV [3], A		#0x13
	DEC A, A		#0x98
	MOV A, [3]		#0x33
	JC L1			#0x2A 0x88
# Output and halt
	MOV [2], A		#0x12
	MOV A, [64]		#0x25 0x40
	HLT				#0x24
