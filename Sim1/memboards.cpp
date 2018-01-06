#include "memboards.h"
#include <cassert>

using namespace std;

word memsystem::read(word address) {
	for (size_t i = 0; i<boards.size(); i++) {
		if (address >= board_ranges[i].first && address < board_ranges[i].second) {
			return boards[i]->read(address-board_ranges[i].first);
		}
	}
	
	return 0;
}

void memsystem::write(word address, word data) {
	for (size_t i=0; i<boards.size(); i++) {
		if (address >= board_ranges[i].first && address < board_ranges[i].second) {
			boards[i]->write(address-board_ranges[i].first, data);
			return;
		}
	}
}

void memsystem::addBoard(memboard* board, word offset) {
	word upper = offset + board->range();
	assert(upper > offset);
	for (size_t i=0; i<boards.size(); i++) {
		assert(!(offset < board_ranges[i].second && upper > board_ranges[i].first));
	}
	
	board_ranges.push_back({offset, upper});
	boards.push_back(board);
}
