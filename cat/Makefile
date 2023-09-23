CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11
OS := $(shell uname -s)

all: s21_cat

test: s21_cat
	sh s21_cat_test.sh

s21_cat:
	$(CC) $(CFLAGS) s21_cat.c -o s21_cat

clean:
	rm -rf *.o s21_cat test

check:
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extensions=c *.c
	rm -rf CPPLINT.cfg
	cppcheck s21_cat.c
	valgrind -v make test
