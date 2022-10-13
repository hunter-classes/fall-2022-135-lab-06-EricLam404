main: main.o caesar.o
	g++ -o main main.o caesar.o

test-ascii: test-ascii.o
	g++ -o test-ascii test-ascii.o

tests: tests.o caesar.o
	g++ -o tests tests.o caesar.o


test-ascii.o: test-ascii.cpp 

caesar.o: caesar.cpp caesar.h

main.o: main.cpp caesar.h

tests.o: tests.cpp doctest.h caesar.h
	g++ -c -std=c++11 tests.cpp

clean:
	rm -f main.o caesar.o tests.o test-ascii.o main caesar tests test-ascii
