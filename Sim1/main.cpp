#include <iostream>
#include <cassert>
#include <unistd.h>
#include "SDL.h"

using namespace std;

typedef uint8_t word;

//-------------
// ALU
//-------------

word ALU_carry_flag=0;
word ALU_zero_flag=0;
word ALU(word A, word B, word Asel, word Bsel, word OUTsel, word FLAGen) {
	assert (Asel <= 1);
	assert (Bsel <= 3);
	assert (OUTsel <= 7);
	
	word ROT = 0;
	if (OUTsel == 4 || OUTsel == 5) {
		ROT = (Bsel & 2) >> 1;
		Bsel &= 1;
	}
	
	word IA;
	switch(Asel) {
	case 0:
		IA = A;
		break;
	case 1:
		IA = 0;
		break;
	default:
		assert(false);
	}
	
	word IB;
	switch(Bsel) {
	case 0:
		IB = B;
		break;
	case 1:
		IB = 0;
		break;
	case 2:
		IB = ~B;
		break;
	case 3:
		IB = 0xFF;
		break;
	default:
		assert(false);
	}
	
	word RES;
	switch(OUTsel) {
	case 0:
		RES = IA + IB;
		if (FLAGen) {
			if (RES < IA) ALU_carry_flag = 1;
			else ALU_carry_flag = 0;
		}
		break;
	case 1:
		RES = IA + IB + 1;
		if (FLAGen) {
			if (RES <= IA) ALU_carry_flag = 1;
			else ALU_carry_flag = 0;
		}
		break;
	case 2:
		RES = IA + IB + ALU_carry_flag;
		if (FLAGen) {
			if (RES < IA || (ALU_carry_flag && RES == IA)) ALU_carry_flag = 1;
			else ALU_carry_flag = 0;
		}
		break;
	case 3:
		RES = IA ^ IB;
		if (FLAGen) {
			ALU_carry_flag = 0;
		}
		break;
	case 4:
		RES = (IA+IB) << 1;
		if (ROT && ALU_carry_flag) RES |= 1;
		if (FLAGen) {
			if ((IA+IB) & 0x80) ALU_carry_flag = 1;
			else ALU_carry_flag = 0;
		}
		break;
	case 5:
		RES = (IA+IB) >> 1;
		if (ROT && ALU_carry_flag) RES |= 0x80;
		if (FLAGen) {
			if ((IA+IB) & 0x01) ALU_carry_flag = 1;
			else ALU_carry_flag = 0;
		}
		break;
	case 6:
		RES = IA & IB;
		if (FLAGen) {
			ALU_carry_flag = 0;
		}
		break;
	case 7:
		RES = IA || IB;
		if (FLAGen) {
			ALU_carry_flag = 0;
		}
	}
	
	if (FLAGen) {
		if (RES == 0) ALU_zero_flag = 1;
		else ALU_zero_flag = 0;
	}
	
	return RES;
}

// --------
// Memory
// --------

word MEM_ram[64] = {0};
word MEM_rom[128] = {
//	0x01, 0x41, 0x25, 0x40, 0x80, 0xD1, 0x64, 0x28, 0x82 // Fib program

//	0x0F, 0x4F, 0x30, 0x71, 0x00, 0x32, 0x03, 0x33,
//	0x51, 0xE5, 0x71, 0x50, 0x6A, 0x91, 0x12, 0x80,
//	0x32, 0xE4, 0x70, 0x13, 0x98, 0x33, 0x2A, 0x88,
//	0x12, 0x25, 0x40, 0x24 // Multiply two 4 bit numbers

//	0x0F, 0x43, 0x30, 0x71, 0x00, 0x51, 0xE5, 0x71,
//	0x50, 0x6A, 0x8C, 0x80, 0xE4, 0x70, 0x51, 0x6C,
//	0x86, 0x25, 0x40, 0x24 // Multiply two 4 bit numbers (alt)

	0x20, 0xAB, 0x30, 0x60, 0xCD, 0x71, 0x00, 0x32,
	0x33, 0x34, 0x50, 0xE5, 0x70, 0x6A, 0x96, 0x51,
	0x13, 0x80, 0x33, 0x52, 0x14, 0x82, 0x34, 0x51,
	0xE4, 0x71, 0x52, 0xF4, 0x72, 0x50, 0x6C, 0x8B,
	0x13, 0x25, 0x40, 0x14, 0x25, 0x40, 0x24 // Multiply two 8 bit numbers
	
//	0x21, 0x48, 0x25, 0x40, 0x65, 0x68, 0x80
};
//word MEM_display[8] = {0};

void MEM_write(word address, word value) {
	if (address < 64) {
		MEM_ram[address] = value;
	}
	if (address == 64) {
		cout << hex << (int)value << endl;
	}
}

word MEM_read(word address) {
	if (address < 64) {
		return MEM_ram[address];
	}
	
	if (address >= 128) {
		return MEM_rom[address-128];
	}
	
	return 0;
}

// Mainloop

int main() {
	word IR = 0;
	word PC = 128;
	word A = 0;
	word B = 0;
	word T = 0;

	while (true) {
		// Cycle 1
		IR = MEM_read(PC);
		// Cycle 2
		PC++;
		// Cycle 3
		if (IR & 0x80) {
			T = ALU(A,B,(IR & 0x20) >> 5, (IR & 0x18) >> 3, IR & 0x07, 1);
		} else if ((IR & 0x30) != 0x20) {
			T = IR & 0x0F;
		} else if ((IR & 0x08) == 0x08 || ((IR & 0x02) == 0 && (IR & 0x05) != 0x04)) {
			T = MEM_read(PC);
		} else if ((IR & 0x07) == 0x04) {
			if (IR & 0x40) {
				usleep(100000);
			} else {
				cout << "Halted" << endl;
				return 0;
			}
		} else if ((IR & 0x01) == 0) {
			T = A;
		} else {
			T = B;
		}
		// Cycle 4
		if ((IR & 0x80) || (IR & 0x30) == 0 || (IR & 0x3F) == 0x20) {
			if ((IR & 0x40) == 0)
				A = T;
			else
				B = T;
			if ((IR & 0xBF) == 0x20)
				PC++;
		} else if ((IR & 0x30) == 0x10 || ((IR & 0x30) == 0x20 && (IR & 0x0C) == 0)) {
			if ((IR & 0x40) == 0)
				A = MEM_read(T);
			else
				B = MEM_read(T);
				
			if ((IR & 0x30) == 0x20 && (IR&0x02) == 0)
				PC++;
		} else if ((IR & 0x30) == 0x30 || ((IR & 0x30) == 0x20 && (IR & 0x04) == 0x04 && (IR & 0x03) != 0)) {
			if ((IR & 0x40) == 0)
				MEM_write(T, A);
			else
				MEM_write(T, B);
				
			if ((IR & 0x30) == 0x20 && (IR & 0x02) == 0)
				PC++;
		} else if ((IR & 0x08) == 0x08) {
			word REGA_zero=0;
			if (A == 0) REGA_zero=1;
			word REGB_zero=0;
			if (B == 0) REGB_zero=1;
			switch(IR & 0x07) {
			case 0:
				if (IR & 0x40) 
					PC++;
				else
					PC = T;
				break;
			case 1:
				if (((IR & 0x40) >> 6) == ALU_zero_flag)
					PC++;
				else
					PC = T;
				break;
			case 2:
				if (((IR & 0x40) >> 6) == ALU_carry_flag)
					PC++;
				else
					PC = T;
				break;
			case 3:
				if (((IR & 0x40) >> 6) == REGA_zero)
					PC++;
				else
					PC = T;
				break;
			case 4:
				if (((IR & 0x40) >> 6) == REGB_zero)
					PC++;
				else
					PC = T;
				break;
			case 5:
			case 6:
			case 7:
				if (IR & 0x40)
					PC = B;
				else
					PC = A;
				break;
			}
		}
	}
}
