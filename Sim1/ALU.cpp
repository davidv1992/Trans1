#include "ALU.h"
#include <cassert>

using namespace std;

word ALU::getcarry() {
	return carry;
}

word ALU::getzero() {
	return zero;
}

word ALU::output(word A, word B, word Asel, word Bsel, word OUTsel, word FLAGen) {
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
			if (RES < IA) carry = 1;
			else carry = 0;
		}
		break;
	case 1:
		RES = IA + IB + 1;
		if (FLAGen) {
			if (RES <= IA) carry = 1;
			else carry = 0;
		}
		break;
	case 2:
		RES = IA + IB + carry;
		if (FLAGen) {
			if (RES < IA || (carry && RES == IA)) carry = 1;
			else carry = 0;
		}
		break;
	case 3:
		RES = IA ^ IB;
		if (FLAGen) {
			carry = 0;
		}
		break;
	case 4:
		RES = (IA+IB) << 1;
		if (ROT && carry) RES |= 1;
		if (FLAGen) {
			if ((IA+IB) & 0x80) carry = 1;
			else carry = 0;
		}
		break;
	case 5:
		RES = (IA+IB) >> 1;
		if (ROT && carry) RES |= 0x80;
		if (FLAGen) {
			if ((IA+IB) & 0x01) carry = 1;
			else carry = 0;
		}
		break;
	case 6:
		RES = IA & IB;
		if (FLAGen) {
			carry = 0;
		}
		break;
	case 7:
		RES = IA || IB;
		if (FLAGen) {
			carry = 0;
		}
	}
	
	if (FLAGen) {
		if (RES == 0) zero = 1;
		else zero = 0;
	}
	
	return RES;
}
