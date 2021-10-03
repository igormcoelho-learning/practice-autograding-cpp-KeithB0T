all: clean test

appTests: tests.cpp student.hpp
	g++ -fsanitize=address --std=c++17 tests.cpp <test-spec> Ex1

test: appTests
	# executes all tests
	./appTests

clean:
	rm -f appTests
