#include "cmdlineboard.h"
#include <iostream>
#include <cassert>

using namespace std;

word cmdlineboard::range(void) {
	return 1;
}

word cmdlineboard::read(word address) {
	assert(address == 0);
	return 0;
}

void cmdlineboard::write(word address, word data) {
	assert(address == 0);
	cout << hex << (int)data << endl;
}
