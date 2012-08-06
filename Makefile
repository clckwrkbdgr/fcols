all:
	gcc -o fcols main.cpp

test: all
	./test.sh

clean:
	rm -f fcols

.PHONY: test
