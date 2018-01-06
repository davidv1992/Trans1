#include "proccore.h"
#include "romboard.h"
#include "ramboard.h"
#include "memboards.h"
#include "ALU.h"
#include "cmdlineboard.h"
#include "dispboard.h"
#include "keyboard.h"

#include <iostream>
#include <fstream>
#include <cassert>
#include <SDL.h>

using namespace std;

Uint32 proctimer(Uint32 interval, void *param) {
	// Ignore param
	(void) param;
	SDL_Event event;
	SDL_UserEvent userevent;
	
	userevent.type = SDL_USEREVENT;
	userevent.code = 0;
	userevent.data1 = NULL;
	userevent.data2 = NULL;
	
	event.type = SDL_USEREVENT;
	event.user = userevent;
	
	SDL_PushEvent(&event);
	return interval;
}

int main(int argc, char **argv) {
	assert(argc == 2);
	ifstream romfile(argv[1]);
	
	if (SDL_Init(SDL_INIT_EVENTS | SDL_INIT_TIMER) != 0) {
		cerr << "Error initializing SDL." << endl;
		return 1;
	}
	atexit(SDL_Quit);
	
	memsystem memory;
	memory.addBoard(new ramboard(64), 0);
	//memory.addBoard(new cmdlineboard(), 64);
	memory.addBoard(new dispboard(), 64);
	memory.addBoard(new keyboard(),72);
	memory.addBoard(new romboard(romfile), 128);
	
	proc core(memory, ALU());
	
	SDL_AddTimer(500, proctimer, NULL);
	
	while (1) {
		SDL_Event event;
		while (SDL_PollEvent(&event)) {
			switch(event.type) {
			case SDL_USEREVENT:
				core.timer();
				break;
			case SDL_QUIT:
				return 0;
			}
		}
		core.step();
	}
	return 0;
}
