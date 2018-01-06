#ifndef PROCCORE_H
#define PROCCORE_H
#include "word.h"
#include "ALU.h"
#include "memboards.h"

class proc {
private:
	memsystem memory;
	ALU alu;

	int clock_state;
	word IR;
	word A;
	word B;
	word T;
	word PC;
	bool hltState;
	bool slpState;
public:
	proc(memsystem _memory, ALU _alu);
	void step(void);
	bool isHalted(void);
	void timer(void);
};

#endif
