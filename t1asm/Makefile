OBJS := main.o

t1asm: $(OBJS)
	g++ -o t1asm $(OBJS) -std=c++11 -g -Wall -Wextra

.cpp.o:
	g++ -MD -c $< -o $@ -std=c++11 -g -Wall -Wextra

clean:
	rm -rf $(OBJS)
	rm -rf $(OBJS:.o=.d)
	rm -rf t1asm

-include $(OBJS:.o=.d)
