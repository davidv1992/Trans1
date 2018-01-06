#ifndef DISPBOARD_H
#define DISPBOARD_H
#include "memboards.h"
#include <SDL.h>
#include <vector>

class dispboard : public memboard {
private:
	SDL_Window *window;
	SDL_Renderer *render;
	std::vector<word> dispmem;
public:
	dispboard(void);
	virtual word range(void);
	virtual word read(word address);
	virtual void write(word address, word data);
};

#endif
