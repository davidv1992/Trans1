#include "ramboard.h"
#include <cassert>

using namespace std;

ramboard::ramboard(word len) {
	data.resize(len);
}

word ramboard::range(void) {
	return data.size();
}

word ramboard::read(word address) {
	assert(address < data.size());
	return data[address];
}

void ramboard::write(word address, word dat) {
	assert(address < data.size());
	data[address] = dat;
}
