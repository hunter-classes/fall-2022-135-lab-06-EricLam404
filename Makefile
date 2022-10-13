main: main.o caesar.o vigenere.o
	g++ -o main main.o caesar.o vigenere.o

test-ascii: test-ascii.o
	g++ -o test-ascii test-ascii.o

tests: tests.o caesar.o vigenere.o
	g++ -o tests tests.o caesar.o vigenere.o


test-ascii.o: test-ascii.cpp 

caesar.o: caesar.cpp caesar.h

vigenere.o: vigenere.cpp vigenere.h

main.o: main.cpp caesar.h vigenere.h

tests.o: tests.cpp doctest.h caesar.h vigenere.h
	g++ -c -std=c++11 tests.cpp

clean:
	rm -f main.o caesar.o vigenere.o tests.o test-ascii.o main caesar vigenere tests test-ascii
