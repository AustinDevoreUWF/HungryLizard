CXX = g++
CXXFLAGS = -g -Wall -std=c++11
LDFLAGS = -pthread

all:lizard

lizard.o: lizard.cpp
	$(CXX) $(CXXFLAGS) -c lizard.cpp -o lizard.o

lizard: lizard.o
	$(CXX) $(CXXFLAGS) lizard.o -o lizard $(LDFLAGS)

clean:
	rm -f lizard.o lizard
