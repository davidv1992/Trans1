#Alternate version

# Program setup
	MOV 3, A
	MOV 3, B
	MOV A, [0]
	MOV B, [1]
# Mult setup
	MOV 0, A
# Extract lowest bit of [1]
	MOV [1], B
L1:	SHR B, B
	MOV B, [1]
	MOV [0], B
	JNC L2
# Add [0] to results in [2]
	ADD A
# Double [0]
L2:	SHL B, B
	MOV B, [0]
# Check loop
	MOV [1], B
	JNZB
# Output and halt
	MOV A, [64]
	HLT
