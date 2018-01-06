#ifndef CMDLINEBOARD_H
#define CMDLINEBOARD_H

#include "memboards.h"

class cmdlineboard : public memboard {
public:
	virtual word range(void);
	virtual word read(word address);
	virtual void write(word address, word data);
};

#endif
