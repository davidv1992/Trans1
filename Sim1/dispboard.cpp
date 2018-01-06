#include "dispboard.h"
#include <cassert>

using namespace std;

dispboard::dispboard() {
	dispmem.resize(8);
	
	window = SDL_CreateWindow("Trans1 Simulator", 100, 100, 256, 256, SDL_WINDOW_SHOWN);
	assert(window);
	render = SDL_CreateRenderer(window, -1, 0);
	assert(render);
	
	SDL_RenderClear(render);
	SDL_RenderPresent(render);
}

word dispboard::range(void) {
	return 8;
}

word dispboard::read(word address) {
	assert(address < 8);
	return dispmem[address];
}

void dispboard::write(word address, word data) {
	assert(address < 8);
	dispmem[address] = data;
	
	SDL_SetRenderDrawColor(render, 0, 0, 0, 255);
	SDL_RenderClear(render);
	SDL_SetRenderDrawColor(render, 255, 0, 0, 255);
	
	SDL_Rect dispPart;
	dispPart.w = 32;
	dispPart.h = 32;
	
	for (int i=0; i<8; i++) {
		for (int j=0; j<8; j++) {
			if (dispmem[i] & (1 << j)) {
				dispPart.x = j*32;
				dispPart.y = i*32;
				SDL_RenderFillRect(render, &dispPart);
			}
		}
	}
	
	SDL_RenderPresent(render);
}
