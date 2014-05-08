CFLAGS = -O3 -Wall -Wextra -std=c99 -pedantic

all: example

example: example.o murmur3.o

clean:
	-rm -rf example *.o
