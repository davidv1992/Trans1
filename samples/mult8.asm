#Program setup
	MOV 0xAB, A		#20 AB
	MOV A, [0]		#30
	MOV 0xCD, B		#60 CD
	MOV B, [1]		#71
#Multiply setup
	MOV 0, A		#00
	MOV A, [2]		#32
	MOV A, [3]		#33	
	MOV A, [4]		#34
# Extract low bit of [0]
	MOV [0], B
L1:	SHR B, B
	MOV B, [0]
	JNC L2
# Addition with carry
	MOV [1], B
	MOV [3], A
	ADD A
	MOV A, [3]
	MOV [2], B
	MOV [4], A
	ADDC A
	MOV A, [4]
# Double [1-2]
L2:	MOV [1], B
	SHL B, B
	MOV B, [1]
	MOV [2], B
	ROLC B, B
	MOV B, [2]
# Check [0] and loop
	MOV [0], B
	JNZB L1
# Output
	MOV [3], A
	MOV A, [65]
	MOV [4], A
	MOV A, [64]
	HLT
