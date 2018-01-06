#ifndef KEYBOARD_H
#define KEYBOARD_H
#include "memboards.h"
#include <SDL.h>

class keyboard : public memboard {
private:
	const Uint8 *kbstate;
public:
	keyboard(void);
	virtual word range(void);
	virtual word read(word address);
	virtual void write(word address, word data);
};

#endif
