OBJS = ev3dev.o

CC = gcc
CXX = g++
DEBUG = 
CFLAGS = -O2 -Wall -DEV3 -c 
CXX_FLAGS = -O2 -std=c++11 -Wall -DEV3 -D_GLIBCXX_USE_NANOSLEEP -c $(DEBUG) -I $(INCLUDE)
LFLAGS = -Wall $(DEBUG)

all: $(OBJS)
	

ev3dev.o : ev3dev.h ev3dev.cpp 
	$(CXX) $(CXX_FLAGS) ev3dev.cpp

clean:
	\rm -f *.o
