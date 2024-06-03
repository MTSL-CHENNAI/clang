CXX = clang++
CXXFLAGS = -Wall -Wextra -std=c++11

# Build rule for main_cpp
main_cpp: main.cpp
    $(CXX) $(CXXFLAGS) -o $@ $<

# Rule to generate compilation database
compile_commands.json:
    bear -- make main_cpp

.PHONY: clean
clean:
    rm -f main_cpp compile_commands.json
