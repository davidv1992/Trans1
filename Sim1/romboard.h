#ifndef ROMBOARD_H
#define ROMBOARD_H
#include "memboards.h"
#include <iostream>
#include <vector>

class romboard : public memboard {
private:
	std::vector<word> data;
public:
	romboard(std::istream &input);
	virtual word range(void);
	virtual word read(word address);
	virtual void write(word address, word dat);
};

#endif
