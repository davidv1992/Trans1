#include "romboard.h"
#include <cassert>
#include <iostream>

using namespace std;

romboard::romboard(istream &input) {
	int len;
	input >> len;
	assert(input && len <=256 && len > 0);
	
	data.resize(len);
	for (int i=0; i<len; i++) {
		int val;
		input >> hex >> val;
		data[i] = val;
		assert(input);
	}
}

word romboard::range(void) {
	return data.size();
}

word romboard::read(word address) {
	assert(address < data.size());
	return data[address];
}

void romboard::write(word address, word dat) {
	// Do nothing
	(void) dat;
	assert(address < data.size());
}
