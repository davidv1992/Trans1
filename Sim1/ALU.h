#ifndef ALU_H
#define ALU_H
#include "word.h"

class ALU {
private:
	word carry;
	word zero;
public:
	word output(word A, word B, word Asel, word Bsel, word OUTsel, word FLAGen);
	word getcarry(void);
	word getzero(void);
};
#endif
