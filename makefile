CC = clang
CXX = clang++
CFLAGS = -Wall -Wextra -pedantic -std=c11
CXXFLAGS = -Wall -Wextra -pedantic -std=c++11
LDFLAGS = -fprofile-instr-generate -fcoverage-mapping

all: main_c main_cpp

main_c: main.c
    $(CC) $(CFLAGS) $(LDFLAGS) -o main_c main.c

main_cpp: main.cpp
    $(CXX) $(CXXFLAGS) $(LDFLAGS) -o main_cpp main.cpp

clean:
    rm -f main_c main_cpp *.profraw *.profdata *.gcov *.gcda *.gcno

.PHONY: all clean
