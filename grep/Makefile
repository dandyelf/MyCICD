CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE
OS := $(shell uname -s)

all: s21_grep

test: s21_grep
	chmod -x s21_grep_test.sh
	sh s21_grep_test.sh

s21_grep:
	$(CC) $(CFLAGS) s21_grep.c -o s21_grep

clean:
	rm -rf *.o s21_grep test

check:
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extensions=c *.c
	rm -rf CPPLINT.cfg
	cppcheck s21_grep.c
	valgrind -v  make test
