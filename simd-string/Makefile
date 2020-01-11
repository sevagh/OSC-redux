CC=g++
FLAGS=-O2 -Wall -Wextra -pedantic -std=c++11 -msse4
DEPS=strlen.cpp strcmp.cpp strchr.cpp strrchr.cpp is_xdigit.cpp strtolower.cpp memcmp.cpp
ALL=unittests

unittests: unittests.cpp $(DEPS)
	$(CC) $(FLAGS) $< -o $@

libsimd-string: $(DEPS)
	$(CC) $(FLAGS) -fPIC -shared $^ -o $@.so

clean:
	rm -f $(ALL)

