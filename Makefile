CFLAGS = -O3 -Wall -Wextra -std=c99 -pedantic

.PHONY: clean test

all: example

example: example.o murmur3.o

tests: test.o murmur3.o
	$(CC) $^ -o $@

test: tests
	./tests

clean:
	-rm -rf example tests *.o
