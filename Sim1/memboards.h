#ifndef memboards_h
#define memboards_h
#include "word.h"
#include <vector>

class memboard {
public:
	virtual ~memboard(void){};
	virtual word range(void)=0;
	virtual word read(word address)=0;
	virtual void write(word address, word data)=0;
};

class memsystem {
private:
	std::vector<memboard*> boards;
	std::vector<std::pair<word, word>> board_ranges;
public:
	word read(word address);
	void write(word address, word data);
	
	void addBoard(memboard *board, word offset);
};

#endif
