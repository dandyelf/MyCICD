#!/bin/bash

./s21_grep -e 127 s21_grep.c >> s21_grep.txt
grep -e 127 s21_grep.c >> grep.txt
echo [1]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -i e s21_grep.c >> s21_grep.txt
grep -i e s21_grep.c >> grep.txt
echo [2]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -v e s21_grep.c > s21_grep.txt
grep -v e s21_grep.c > grep.txt
echo [3]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -c e s21_grep.c > s21_grep.txt
grep -c e s21_grep.c > grep.txt
echo [4]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -l e s21_grep.c s21_grep.c s21_grep.c > s21_grep.txt
grep -l e s21_grep.c s21_grep.c s21_grep.c > grep.txt
echo [5]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -n e s21_temp.txt s21_de.txt > s21_grep.txt
grep -n e s21_temp.txt s21_de.txt > grep.txt
echo [6]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -h e s21_grep.c > s21_grep.txt
grep -h e s21_grep.c > grep.txt
echo [7]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -s e s21_grep.c > s21_grep.txt
grep -s e s21_grep.c > grep.txt
echo [8]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -f s21_temp.txt s21_grep.c > s21_grep.txt
grep -f s21_temp.txt s21_grep.c > grep.txt
echo [9]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep int s21_grep.c s21_de.txt > s21_grep.txt
grep int s21_grep.c s21_de.txt > grep.txt
echo [10]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -i int s21_grep.c > s21_grep.txt
grep -i int s21_grep.c > grep.txt
echo [11]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -v s s21_grep.c > s21_grep.txt
grep -v s s21_grep.c > grep.txt
echo [12]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -c s s21_grep.c > s21_grep.txt
grep -c s s21_grep.c > grep.txt
echo [13]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -l s s21_grep.c > s21_grep.txt
grep -l s s21_grep.c > grep.txt
echo [14]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -l s s21_de.txt > s21_grep.txt
grep -l s s21_de.txt > grep.txt
echo [15]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -n s s21_de.txt > s21_grep.txt
grep -n s s21_de.txt > grep.txt
echo [16]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -n s s21_grep.c > s21_grep.txt
grep -n s s21_grep.c > grep.txt
echo [17]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -o 123 s21_grep.c > s21_grep.txt
grep -o 123 s21_grep.c > grep.txt
echo [18]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -h options s21_grep.c s21_de.txt > s21_grep.txt
grep -h options s21_grep.c s21_de.txt > grep.txt
echo [19]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -s grep 123123 > s21_grep.txt
grep -s grep 123123 > grep.txt
echo [20]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -f s21_temp.txt s21_grep.c > s21_grep.txt
grep -f s21_temp.txt s21_grep.c > grep.txt
echo [21]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -in options s21_grep.c > s21_grep.txt
grep -in options s21_grep.c > grep.txt
echo [22]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -cv s s21_grep.c s21_de.txt > s21_grep.txt
grep -cv s s21_grep.c s21_de.txt > grep.txt
echo [23]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -lv s s21_grep.c > s21_grep.txt
grep -lv s s21_grep.c > grep.txt
echo [24]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

./s21_grep -ho int s21_temp.txt s21_de.txt > s21_grep.txt
grep -ho int s21_temp.txt s21_de.txt s21_temp.txt s21_de.txt > grep.txt
echo [25]
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt