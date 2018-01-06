#include "keyboard.h"
#include <cassert>

using namespace std;

keyboard::keyboard(void) {
	kbstate = SDL_GetKeyboardState(NULL);
}

word keyboard::range(void) {
	return 1;
}

word keyboard::read(word address) {
	assert(address == 0);
	
	word res = 0;
	if (kbstate[SDL_SCANCODE_LEFT])
		res |= 1;
	if (kbstate[SDL_SCANCODE_RIGHT])
		res |= 2;
	if (kbstate[SDL_SCANCODE_UP])
		res |= 4;
	if (kbstate[SDL_SCANCODE_DOWN])
		res |= 8;
	return res;
}

void keyboard::write(word address, word data) {
	(void) data;
	assert(address == 0);
}
