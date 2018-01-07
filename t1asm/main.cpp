#include <iostream>
#include <iomanip>
#include <string>
#include <cstdint>
#include <vector>
#include <map>
#include <cctype>
#include <cstdlib>

using namespace std;


// Datastructures
enum argType {
	ARG_VALUE_LABEL = 1,
	ARG_VALUE_VAL = 2,
	ARG_VALUE_REG = 4,
	ARG_ADRESSED_LABEL = 8,
	ARG_ADRESSED_VAL = 16,
	ARG_ADRESSED_REG = 32
};

enum reg {
	REG_A,
	REG_B
};

struct arg {
	argType type;
	string ID;
	int value;
	reg r;
};

struct instruction {
	string opcode;
	int adress;
	int size;
	int nargs;
	int line;
	arg arg1;
	arg arg2;
};

struct oneOpAlu {
	int machinecode;
};

struct twoOpAlu {
	int regacode;
	int regbcode;
};

struct jmpCode {
	int machinecode;
};

// "Simple" opcode handling
map<string, oneOpAlu> singleALUtable = {
	{"ADD", {0x80}},
	{"ADDINC", {0x81}},
	{"ADDC", {0x82}},
	{"SUB", {0x91}},
	{"SUBDEC", {0x90}},
	{"SUBC", {0x92}},
	{"AND", {0x86}},
	{"OR", {0x87}},
	{"XOR", {0x83}},
	{"ANDNOT", {0x96}},
	{"ORNOT", {0x97}}
};

map<string, twoOpAlu> biALUtable = {
	{"SHL", {0x8C, 0xA4}},
	{"SHR", {0x8D, 0xA5}},
	{"ROLC", {0x9C, 0xB4}},
	{"RORC", {0x9D, 0xB5}},
	{"DEC", {0x98, -1}},
	{"INC", {0x89, 0xA1}},
	{"NOT", {0x9B, 0xB0}},
	{"INV", {-1, 0xB1}}
};

map<string, jmpCode> jmptable = {
	{"JZ", {0x29}},
	{"JNZ", {0x69}},
	{"JC", {0x2A}},
	{"JNC", {0x6A}},
	{"JZA", {0x2B}},
	{"JNZA", {0x6B}},
	{"JZB", {0x2C}},
	{"JNZB", {0x6C}}
};

// Machine configuration info
#define GLOBAL_ORIG 128

// Global error flag
bool haveError = false;

pair<map<string, size_t>, vector<instruction>> parseInputFile (istream &input) {
	map<string, size_t> labeltable;
	vector<instruction> instructions;
	int lineno = 0;
	while (input) {
		lineno++;
		string line;
		getline(input, line);
		if (!input) break; // Detect end of file
		size_t i=0;
		
		// Skip leading space
		while (i < line.size() && isspace(line[i])) i++;
		
		// Handle empty lines and comments (a)
		if (i == line.size() || line[i] == '#') continue;
		
		// First element must be ID (either as part of label, or being an opcode)
		bool containsNum = false;
		if (!isalpha(line[i])) {
			cerr << lineno << ": Expected line start with an identifier or instruction." << endl;
			haveError = true;
			continue;
		}
		string id = "";
		while (i < line.size() && isalnum(line[i])) {
			id += line[i];
			if (isdigit(line[i])) containsNum = true;
			i++;
		}
		
		// Skip some more (potential) whitespace
		while (i < line.size() && isspace(line[i])) i++;
		
		// And detect and handle labels
		if ((i < line.size() && line[i] == ':') || containsNum) {
			if (i == line.size() || line[i] != ':') {
				cerr << lineno << ": Expected \':\' after label." << endl;
				haveError = true;
			} else {
				i++;
			}
			if (labeltable.count(id) != 0) {
				cerr << lineno << ": Double definition of label \'" << id << "\'." << endl;
				haveError = true;
			}
			labeltable[id] = instructions.size();
			
			// Skip more whitespace
			while (i < line.size() && isspace(line[i])) i++;
			// Detect solitary labels
			if (i == line.size() || line[i] == '#') continue;
			// Some more error detection
			if (!isalpha(line[i])) {
				cerr << lineno << ": Expected opcode, got \'" << line[i] << "\'." << endl;
				haveError = true;
				continue;
			}
			// And prep id to be an opcode
			id = ""; containsNum = false;
			while (i < line.size() && isalnum(line[i])) {
				id += line[i];
				if (isdigit(line[i])) containsNum = true;
				i++;
			}
			// Even more error detection
			if (containsNum) {
				cerr << lineno << ": Contains double label." << endl;
				haveError = true;
				continue;
			}
		}
		
		// We have an opcode, let's build an instruction
		instructions.push_back(instruction());
		instructions.back().opcode = id;
		instructions.back().line = lineno;
		instructions.back().nargs = 0;
		
		// Skip whitespace
		while (i < line.size() && isspace(line[i])) i++;
		// Detect end of line
		if (i == line.size() || line[i] == '#') continue;
		
		// We should have an argument, first check if it represents an address
		bool isAddress = false;
		if (line[i] == '[') {
			// Mark
			i++;
			isAddress = true;
			// Skip whitespace
			while (i < line.size() && isspace(line[i])) i++;
			// Make sure we have more content
			if (i == line.size() || line[i] == '#') {
				cerr << lineno << ": Unexpected end of line during operand." << endl;
				haveError = true;
				continue;
			}
		}
		
		// Extract first argument
		if (isalpha(line[i])) {
			id = "";
			while (i < line.size() && isalnum(line[i])) {
				id += line[i];
				i++;
			}
		
			instructions.back().nargs++;
			if (id == "A" || id == "B") {
				if (id == "A")
					instructions.back().arg1.r = REG_A;
				else
					instructions.back().arg1.r = REG_B;
				
				if (isAddress)
					instructions.back().arg1.type = ARG_ADRESSED_REG;
				else
					instructions.back().arg1.type = ARG_VALUE_REG;
			} else {
				instructions.back().arg1.ID = id;
				if (isAddress)
					instructions.back().arg1.type = ARG_ADRESSED_LABEL;
				else
					instructions.back().arg1.type = ARG_VALUE_LABEL;
			}
		} else if (isdigit(line[i])) {
			// Handle octal, hex and decimal
			int value = 0;
			if (line[i] == '0') {
				i++;
				// cases
				if (i == line.size() || (!isdigit(line[i]) && line[i] != 'x')) {
					// simple zero
					value = 0;
				} else if (line[i] == 'x') {
					// hex
					i++;
					if (i == line.size()) {
						cerr << lineno << ": Unexpected end of line during argument." << endl;
						haveError = true;
						continue;
					}
					if (!isalnum(line[i])) {
						cerr << lineno << ": Unexpected character \'" << line[i] << "\'." << endl;
						haveError = true;
						continue;
					}
					while (i < line.size() && isalnum(line[i])) {
						if (isdigit(line[i])) {
							value *= 16;
							value += line[i]-'0';
						} else if (line[i] >= 'a' && line[i] <= 'f') {
							value *= 16;
							value += line[i] - 'a' + 10;
						} else if (line[i] >= 'A' && line[i] <= 'F') {
							value *= 16;
							value += line[i] - 'A' + 10;
						} else {
							break;
						}
						i++;
					}
				} else {
					// octal
					while (i < line.size() && isdigit(line[i])) {
						if (line[i] >= '8') break;
						value *= 8;
						value += line[i]-'0';
						i++;
					}
				}
			} else {
				// decimal
				while (i < line.size() && isdigit(line[i])) {
					value *= 10;
					value += line[i] - '0';
					i++;
				}
			}
			if (value > 255 || value < 0) {
				cerr << lineno << ": Value too big." << endl;
				haveError = true;
			}
			instructions.back().nargs++;
			instructions.back().arg1.value = value;
			if (isAddress)
				instructions.back().arg1.type = ARG_ADRESSED_VAL;
			else
				instructions.back().arg1.type = ARG_VALUE_VAL;
		} else {
			cerr << lineno << ": Expected operand, got \'" << line[i] << "\'." << endl;
			haveError = true;
			continue;
		}
		
		// Skip whitespace
		while (i < line.size() && isspace(line[i])) i++;
		
		// Handle ] if needed
		if (isAddress) {
			if (i == line.size() || line[i] != ']') {
				cerr << lineno << ": Missing ] on first operand." << endl;
			} else {
				i++;
				while (i < line.size() && isspace(line[i])) i++;
			}
		}
		
		// Check end of line
		if (i == line.size() || line[i] == '#') continue;
		// And verify that if not, we have another argument
		if (line[i] != ',') {
			cerr << lineno << ": Expected comma, got \'" << line[i] << "\'." << endl;
			haveError = true;
			continue;
		}
		i++;
		while (i < line.size() && isspace(line[i])) i++;
		
		// Check whether it is an address
		isAddress = false;
		if (line[i] == '[') {
			// Mark
			i++;
			isAddress = true;
			// Skip whitespace
			while (i < line.size() && isspace(line[i])) i++;
			// Make sure we have more content
			if (i == line.size() || line[i] == '#') {
				cerr << lineno << ": Unexpected end of line during operand." << endl;
				haveError = true;
				continue;
			}
		}
		
		// Read second argument.
		if (isalpha(line[i])) {
			id = "";
			while (i < line.size() && isalnum(line[i])) {
				id += line[i];
				i++;
			}
		
			instructions.back().nargs++;
			if (id == "A" || id == "B") {
				if (id == "A")
					instructions.back().arg2.r = REG_A;
				else
					instructions.back().arg2.r = REG_B;
				
				if (isAddress)
					instructions.back().arg2.type = ARG_ADRESSED_REG;
				else
					instructions.back().arg2.type = ARG_VALUE_REG;
			} else {
				instructions.back().arg2.ID = id;
				if (isAddress)
					instructions.back().arg2.type = ARG_ADRESSED_LABEL;
				else
					instructions.back().arg2.type = ARG_VALUE_LABEL;
			}
		} else if (isdigit(line[i])) {
			// Handle octal, hex and decimal
			int value = 0;
			if (line[i] == '0') {
				i++;
				// cases
				if (i == line.size() || (!isdigit(line[i]) && line[i] != 'x')) {
					// simple zero
					value = 0;
				} else if (line[i] == 'x') {
					// hex
					i++;
					if (i == line.size()) {
						cerr << lineno << ": Unexpected end of line during operand." << endl;
						haveError = true;
						continue;
					}
					if (!isalnum(line[i])) {
						cerr << lineno << ": Unexpected character \'" << line[i] << "\'." << endl;
						haveError = true;
						continue;
					}
					while (i < line.size() && isalnum(line[i])) {
						if (isdigit(line[i])) {
							value *= 16;
							value += line[i]-'0';
						} else if (line[i] >= 'a' && line[i] <= 'f') {
							value *= 16;
							value += line[i] - 'a' + 10;
						} else if (line[i] >= 'A' && line[i] <= 'F') {
							value *= 16;
							value += line[i] - 'A' + 10;
						} else {
							break;
						}
						i++;
					}
				} else {
					// octal
					while (i < line.size() && isdigit(line[i])) {
						if (line[i] >= '8') break;
						value *= 8;
						value += line[i]-'0';
						i++;
					}
				}
			} else {
				// decimal
				while (i < line.size() && isdigit(line[i])) {
					value *= 10;
					value += line[i] - '0';
					i++;
				}
			}
			if (value > 255 || value < 0) {
				cerr << lineno << ": Value too big." << endl;
				haveError = true;
			}
			instructions.back().nargs++;
			instructions.back().arg2.value = value;
			if (isAddress)
				instructions.back().arg2.type = ARG_ADRESSED_VAL;
			else
				instructions.back().arg2.type = ARG_VALUE_VAL;
		} else {
			cerr << lineno << ": Expected operand, got \'" << line[i] << "\'." << endl;
			haveError = true;
			continue;
		}
		
		// Skip whitespace
		while (i < line.size() && isspace(line[i])) i++;
		
		// Handle ] if needed
		if (isAddress) {
			if (i == line.size() || line[i] != ']') {
				cerr << lineno << ": Missing ] on first operand." << endl;
			} else {
				i++;
				while (i < line.size() && isspace(line[i])) i++;
			}
		}
		
		// check end of line
		if (i == line.size() || line[i] == '#') continue;
		
		cerr << lineno << ": Unexpected junk at end of line.\n" << endl;
		haveError = true;
	}
	
	lineno++;
	instructions.push_back(instruction());
	instructions.back().opcode = "";
	instructions.back().nargs = 0;
	instructions.back().line = lineno;
	
	return make_pair(labeltable, instructions);
}

void printProgram(pair<map<string, size_t>, vector<instruction>> &prog) {
	size_t i=0;
	map<string, size_t> labels = prog.first;
	vector<instruction> &instructions = prog.second;
	while (1) {
		for (const auto &l : labels) {
			if (l.second == i) {
				cout << l.first << ":" << endl;
			}
		}
		if (instructions[i].opcode == "") break;
		cout << "\t" << instructions[i].opcode;
		
		if (instructions[i].nargs >= 1) {
			cout << " ";
			switch(instructions[i].arg1.type) {
			case ARG_VALUE_LABEL:
				cout << instructions[i].arg1.ID;
				break;
			case ARG_VALUE_VAL:
				cout << instructions[i].arg1.value;
				break;
			case ARG_VALUE_REG:
				if (instructions[i].arg1.r == REG_A)
					cout << "A";
				else
					cout << "B";
				break;
			case ARG_ADRESSED_LABEL:
				cout << "[" << instructions[i].arg1.ID << "]";
				break;
			case ARG_ADRESSED_VAL:
				cout << "[" << instructions[i].arg1.value << "]";
				break;
			case ARG_ADRESSED_REG:
				cout << "[";
				if (instructions[i].arg1.r == REG_A)
					cout << "A";
				else
					cout << "B";
				cout << "]";
				break;
			}
		}
		
		if (instructions[i].nargs == 2) {
			cout << ", ";
			switch(instructions[i].arg2.type) {
			case ARG_VALUE_LABEL:
				cout << instructions[i].arg2.ID;
				break;
			case ARG_VALUE_VAL:
				cout << instructions[i].arg2.value;
				break;
			case ARG_VALUE_REG:
				if (instructions[i].arg2.r == REG_A)
					cout << "A";
				else
					cout << "B";
				break;
			case ARG_ADRESSED_LABEL:
				cout << "[" << instructions[i].arg2.ID << "]";
				break;
			case ARG_ADRESSED_VAL:
				cout << "[" << instructions[i].arg2.value << "]";
				break;
			case ARG_ADRESSED_REG:
				cout << "[";
				if (instructions[i].arg2.r == REG_A)
					cout << "A";
				else
					cout << "B";
				cout << "]";
				break;
			}
		}
		i++;
		cout << endl;
	}
}

void validateProgram(pair<map<string, size_t>, vector<instruction>> &prog) {
	map<string, size_t> labels = prog.first;
	vector<instruction> &instructions = prog.second;
	
	if (instructions.size() > 257) {
		cerr << "Program too big, have " << instructions.size()-1 << " instructions (max 256)." << endl;
		haveError = true;
		return;
	}
	
	for (size_t i=0; instructions[i].opcode != ""; i++) {
		string opcode = "";
		for (char c : instructions[i].opcode) opcode += toupper(c);
		instructions[i].opcode = opcode;
		
		if (opcode == "MOV") {
			if (instructions[i].nargs != 2) {
				cerr << instructions[i].line << ": MOV expects two operands." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.type != ARG_VALUE_REG && instructions[i].arg2.type != ARG_VALUE_REG) {
				cerr << instructions[i].line << ": One of MOV's operands needs to be a register." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg2.type == ARG_VALUE_LABEL || instructions[i].arg2.type == ARG_VALUE_VAL) {
				cerr << instructions[i].line << ": Destination of MOV cannot be constant." << endl;
				haveError = true;
				continue;
			}
		} else if (opcode == "HLT" || opcode == "SLP") {
			if (instructions[i].nargs != 0) {
				cerr << instructions[i].line << ": " << opcode << " does not take operand(s)." << endl;
				haveError = true;
				continue;
			}
		} else if (opcode == "JMP") {
			if (instructions[i].nargs != 1) {
				cerr << instructions[i].line << ": JMP takes precisely one operand." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.type != ARG_VALUE_LABEL && instructions[i].arg1.type != ARG_VALUE_VAL && instructions[i].arg1.type != ARG_ADRESSED_REG) {
				cerr << instructions[i].line << ": Invalid operand for JMP." << endl;
				haveError = true;
				continue;
			}
		} else if (singleALUtable.count(opcode)) {
			if (instructions[i].nargs != 1) {
				cerr << instructions[i].line << ": " << opcode << " takes precisely one operand." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.type != ARG_VALUE_REG) {
				cerr << instructions[i].line << ": " << opcode << " needs a register destination." << endl;
				haveError = true;
				continue;
			}
		} else if (biALUtable.count(opcode)) {
			if (instructions[i].nargs != 2) {
				cerr << instructions[i].line << ": " << opcode << " expects two operands." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.type != ARG_VALUE_REG || instructions[i].arg2.type != ARG_VALUE_REG) {
				cerr << instructions[i].line << ": " << opcode << " expects register operands." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.r == REG_A && biALUtable[opcode].regacode < 0) {
				cerr << instructions[i].line << ": " << opcode << " is not available on the A register." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.r == REG_B && biALUtable[opcode].regbcode < 0) {
				cerr << instructions[i].line << ": " << opcode << " is not available on the B register." << endl;
				haveError = true;
				continue;
			}
		} else if (jmptable.count(opcode)) {
			if (instructions[i].nargs != 1) {
				cerr << instructions[i].line << ": " << opcode << " takes precisely one operand." << endl;
				haveError = true;
				continue;
			}
			if (instructions[i].arg1.type != ARG_VALUE_LABEL && instructions[i].arg1.type != ARG_VALUE_VAL) {
				cerr << instructions[i].line << ": " << opcode << " needs a constant destination address." << endl;
				haveError = true;
				continue;
			}
		} else {
			cerr << instructions[i].line << ": Unknown opcode " << opcode << "." << endl;
			haveError = true;
			continue;
		}
	}
}

void sizeAnnotate(int orig, pair<map<string, size_t>, vector<instruction>> &prog) {
	map<string, size_t> &labels = prog.first;
	vector<instruction> &instructions = prog.second;
	
	map<string, int> labelAddr;
	// Initial pass
	int curAddr = orig;
	for (size_t i = 0; i<instructions.size(); i++) {
		instructions[i].adress = curAddr;
		if ((instructions[i].opcode == "JMP" && instructions[i].arg1.type != ARG_ADRESSED_REG) || jmptable.count(instructions[i].opcode)) {
			instructions[i].size = 2;
		} else if (instructions[i].opcode == "") {
			instructions[i].size = 0;
		} else {
			instructions[i].size = 1;
		}
		curAddr += instructions[i].size;
	}
	for (const auto &l : labels) {
		labelAddr[l.first] = instructions[l.second].adress;
	}
	
	// Iterate, increasing sizes while neccessary
	while (1) {
		bool haveChange = false;
		for (size_t i=0; i<instructions.size(); i++) {
			if (instructions[i].opcode == "MOV" && instructions[i].size == 1) {
				if ((instructions[i].arg1.type == ARG_VALUE_VAL || instructions[i].arg1.type == ARG_ADRESSED_VAL) && instructions[i].arg1.value != 0xFF && instructions[i].arg1.value > 15) {
					instructions[i].size = 2;
					haveChange = true;
				}
				if ((instructions[i].arg1.type == ARG_VALUE_LABEL || instructions[i].arg1.type == ARG_ADRESSED_LABEL) && labelAddr[instructions[i].arg1.ID] > 15) {
					instructions[i].size = 2;
					haveChange = true;
				}
				if (instructions[i].arg2.type == ARG_ADRESSED_VAL && instructions[i].arg2.value > 15) {
					instructions[i].size = 2;
					haveChange = true;
				}
				if (instructions[i].arg2.type == ARG_ADRESSED_LABEL && labelAddr[instructions[i].arg2.ID] > 15) {
					instructions[i].size = 2;
					haveChange = true;
				}
			}
		}
		
		if (!haveChange) break;
		
		curAddr = orig;
		for (size_t i=0; i<instructions.size(); i++) {
			instructions[i].adress = curAddr;
			curAddr += instructions[i].size;
		}
		for (const auto &l : labels) {
			labelAddr[l.first] = instructions[l.second].adress;
		}
	}
}

vector<int> emit(pair<map<string, size_t>, vector<instruction>> &prog) {
	map<string, size_t> &labels = prog.first;
	vector<instruction> &instructions = prog.second;
	
	map<string, int> labelAddr;
	for (const auto &l : labels) {
		labelAddr[l.first] = instructions[l.second].adress;
	}
	
	vector<int> memory;
	for (size_t i=0; instructions[i].opcode != ""; i++) {
		if (instructions[i].opcode == "MOV") {
			if (instructions[i].arg1.type == ARG_VALUE_REG && instructions[i].arg2.type == ARG_VALUE_REG) {
				// register register move
				int mc;
				if (instructions[i].arg1.r == REG_A)
					mc = 0x88;
				else
					mc = 0xC0;
				
				if (instructions[i].arg2.r == REG_B)
					mc |= 0x40;
				
				memory.push_back(mc);
			} else if (instructions[i].arg1.type == ARG_VALUE_REG) {
				// register to memory
				if (instructions[i].arg2.type == ARG_ADRESSED_REG) {
					// indirect adress
					int mc;
					if (instructions[i].arg2.r == REG_A)
						mc = 0x26;
					else
						mc = 0x27;
					if (instructions[i].arg1.r == REG_B)
						mc |= 0x40;
					memory.push_back(mc);
				} else {
					// direct adress
					int dest;
					if (instructions[i].arg2.type == ARG_ADRESSED_VAL)
						dest = instructions[i].arg2.value;
					else
						dest = labelAddr[instructions[i].arg2.ID];
					if (instructions[i].size == 1) {
						int mc = 0x30;
						mc |= dest;
						if (instructions[i].arg1.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
					} else {
						int mc = 0x25;
						if (instructions[i].arg1.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
						memory.push_back(dest);
					}
				}
			} else {
				// memory or constant to register
				if (instructions[i].arg1.type == ARG_VALUE_VAL || instructions[i].arg1.type == ARG_VALUE_LABEL) {
					// load constant
					int val;
					if (instructions[i].arg1.type == ARG_VALUE_VAL)
						val = instructions[i].arg1.value;
					else
						val = labelAddr[instructions[i].arg1.ID];
					if (instructions[i].size == 1) {
						int mc = 0x00;
						mc |= val;
						if (instructions[i].arg2.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
					} else {
						int mc = 0x20;
						if (instructions[i].arg2.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
						memory.push_back(val);
					}
				} else if (instructions[i].arg1.type == ARG_ADRESSED_REG) {
					int mc;
					if (instructions[i].arg1.r == REG_A)
						mc = 0x22;
					else
						mc = 0x23;
					if (instructions[i].arg2.r == REG_B)
						mc |= 0x40;
					memory.push_back(mc);
				} else {
					// load address
					int dest;
					if (instructions[i].arg1.type == ARG_ADRESSED_VAL)
						dest = instructions[i].arg1.value;
					else
						dest = labelAddr[instructions[i].arg1.ID];
					if (instructions[i].size == 1) {
						int mc = 0x10;
						mc |= dest;
						if (instructions[i].arg2.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
					} else {
						int mc = 0x21;
						if (instructions[i].arg2.r == REG_B)
							mc |= 0x40;
						memory.push_back(mc);
						memory.push_back(dest);
					}
				}
			}
		} else if (instructions[i].opcode == "HLT") {
			memory.push_back(0x24);
		} else if (instructions[i].opcode == "SLP") {
			memory.push_back(0x64);
		} else if (instructions[i].opcode == "JMP") {
			if (instructions[i].arg1.type == ARG_ADRESSED_REG) {
				// indirect jump
				if (instructions[i].arg1.r == REG_A)
					memory.push_back(0x2F);
				else
					memory.push_back(0x6F);
			} else {
				memory.push_back(0x28);
				int dest;
				if (instructions[i].arg1.type == ARG_VALUE_VAL)
					dest = instructions[i].arg1.value;
				else
					dest = labelAddr[instructions[i].arg1.ID];
				memory.push_back(dest);
			}
		} else if (jmptable.count(instructions[i].opcode) != 0) {
			int dest;
			if (instructions[i].arg1.type == ARG_VALUE_VAL)
				dest = instructions[i].arg1.value;
			else
				dest = labelAddr[instructions[i].arg1.ID];
			memory.push_back(jmptable[instructions[i].opcode].machinecode);
			memory.push_back(dest);
		} else if (singleALUtable.count(instructions[i].opcode) != 0) {
			int mc = singleALUtable[instructions[i].opcode].machinecode;
			if (instructions[i].arg1.r == REG_B)
				mc |= 0x40;
			memory.push_back(mc);
		} else if (biALUtable.count(instructions[i].opcode) != 0) {
			int mc;
			if (instructions[i].arg1.r == REG_A)
				mc = biALUtable[instructions[i].opcode].regacode;
			else
				mc = biALUtable[instructions[i].opcode].regbcode;
			if (instructions[i].arg2.r == REG_B)
				mc |= 0x40;
			memory.push_back(mc);
		} else {
			cerr << "Internal compiler error." << endl;
			abort();
		}
	}
	
	return memory;
}

int main() {
	auto prog = parseInputFile(cin);
	validateProgram(prog);
	if (haveError) return 1;
	sizeAnnotate(GLOBAL_ORIG, prog);
	auto res = emit(prog);
	if (res.size() > 256-GLOBAL_ORIG) {
		cerr << "Program size too big (current: " << res.size() << ", max: " << 256-GLOBAL_ORIG << ")." << endl;
		return 0;
	}
	cout << res.size() << endl;
	for (size_t i=0; i<res.size(); i++) {
		if (i % 8 == 0) {
			if (i != 0) cout << endl;
		} else {
			cout << " ";
		}
		cout << hex << setfill('0') << setw(2) << uppercase << res[i];
	}
	cout << endl;
	return 0;
}
