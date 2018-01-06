#ifndef RAMBOARD_H
#define RAMBOARD_H
#include "memboards.h"
#include <vector>

class ramboard : public memboard {
private:
	std::vector<word> data;
public:
	ramboard(word len);
	virtual word range(void);
	virtual word read(word address);
	virtual void write(word address, word dat);
};

#endif
