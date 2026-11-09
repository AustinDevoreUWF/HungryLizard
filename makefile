CXX = g++
CXXFLAGS = -g -Wall -std=c++11
LDFLAGS = -pthread

all:lizards

lizards.o: lizards.cpp
	$(CXX) $(CXXFLAGS) -c lizards.cpp -o lizards.o

lizards: lizards.o
	$(CXX) $(CXXFLAGS) lizards.o -o lizards $(LDFLAGS)

clean:
	rm -f lizards.o lizards
