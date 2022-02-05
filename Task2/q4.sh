#!/bin/bash
#Filename: q4.sh

#4. Design a script that accept 3 arguments (option[-i,-c, -d], word, file) based on the option if it:
#	-i: print the lines that contain the given word.
#	-c: print the number of matched given word.
#	-d: print the file after deleting the lines that contain the given word.

case $1 in
	(-i) grep $2 $3;;
	(-c) grep -o $2 $3 | wc -w ;;
	(-d) grep -v $2 $3;;
	(*) echo undefined arguments;;
esac



