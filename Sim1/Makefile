OBJS := main.o ALU.o memboards.o proccore.o ramboard.o romboard.o cmdlineboard.o dispboard.o keyboard.o

sim: $(OBJS)
	g++ -o sim $(OBJS) -std=c++11 -g -Wall -Wextra `sdl2-config --libs`

.cpp.o:
	g++ -MD -c $< -o $@ -std=c++11 -g -Wall -Wextra `sdl2-config --cflags`

clean:
	rm -rf $(OBJS)
	rm -rf $(OBJS:.o=.d)
	rm -rf sim

-include $(OBJS:.o=.d)
