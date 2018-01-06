#include "proccore.h"

using namespace std;

proc::proc(memsystem _memory, ALU _alu) {
	memory = _memory;
	alu = _alu;
	slpState = false;
	hltState = false;
	IR = 0;
	A = 0;
	B = 0;
	T = 0;
	PC = 128;
	clock_state = 0;
}

bool proc::isHalted(void) {
	return hltState;
}

void proc::timer(void) {
	slpState = false;
}

void proc::step(void) {
	if (slpState || hltState) return;
	
	word REGA_zero=0;
	if (A == 0) REGA_zero=1;
	word REGB_zero=0;
	if (B == 0) REGB_zero=1;
	
	switch(clock_state) {
	case 0:
		IR = memory.read(PC);
		break;
	case 1:
		PC++;
		break;
	case 2:
		if (IR & 0x80) {
			T = alu.output(A,B,(IR & 0x20) >> 5, (IR & 0x18) >> 3, IR & 0x07, 1);
		} else if ((IR & 0x30) != 0x20) {
			T = IR & 0x0F;
		} else if ((IR & 0x08) == 0x08 || ((IR & 0x02) == 0 && (IR & 0x05) != 0x04)) {
			T = memory.read(PC);
		} else if ((IR & 0x07) == 0x04) {
			if (IR & 0x40) {
				slpState = true;
			} else {
				hltState = true;
			}
		} else if ((IR & 0x01) == 0) {
			T = A;
		} else {
			T = B;
		}
		break;
	case 3:
		if ((IR & 0x80) || (IR & 0x30) == 0 || (IR & 0x3F) == 0x20) {
			if ((IR & 0x40) == 0)
				A = T;
			else
				B = T;
			if ((IR & 0xBF) == 0x20)
				PC++;
		} else if ((IR & 0x30) == 0x10 || ((IR & 0x30) == 0x20 && (IR & 0x0C) == 0)) {
			if ((IR & 0x40) == 0)
				A = memory.read(T);
			else
				B = memory.read(T);
				
			if ((IR & 0x30) == 0x20 && (IR&0x02) == 0)
				PC++;
		} else if ((IR & 0x30) == 0x30 || ((IR & 0x30) == 0x20 && (IR & 0x08) != 0x08 && (IR & 0x04) == 0x04 && (IR & 0x03) != 0)) {
			if ((IR & 0x40) == 0)
				memory.write(T, alu.output(A,B,0,1,0,0));
			else
				memory.write(T, alu.output(A,B,1,0,0,0));
				
			if ((IR & 0x30) == 0x20 && (IR & 0x02) == 0)
				PC++;
		} else if ((IR & 0x08) == 0x08) {
			switch(IR & 0x07) {
			case 0:
				if (IR & 0x40) 
					PC++;
				else
					PC = T;
				break;
			case 1:
				if (((IR & 0x40) >> 6) == alu.getzero())
					PC++;
				else
					PC = T;
				break;
			case 2:
				if (((IR & 0x40) >> 6) == alu.getcarry())
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
		break;
	}
	
	clock_state++;
	if (clock_state == 4) clock_state = 0;
}
