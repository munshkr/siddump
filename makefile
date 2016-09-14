CC=gcc
CXX=g++
CFLAGS+=-O3 -Wall
CXXFLAGS=$(CFLAGS)

siddump: siddump.o cpu.o
	gcc -o $@ $^ -lm
	strip $@

clean:
	rm -f siddump *.o
