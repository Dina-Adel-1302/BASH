#!/bin/bash
#Filename: q4.sh

#4. Design a script that accept 3 arguments (option[-i,-c, -d], word, file) based on the option if it:
#	-i: print the lines that contain the given word.
#	-c: print the number of matched given word.
#	-d: print the file after deleting the lines that contain the given word.

echo "Please enter 3 arguments: option[-i,-c, -d], word, file:"
echo "-i: print the lines that contain the given word."
echo "-c: print the number of matched given word."
echo "-d: print the file after deleting the lines that contain the given word."
echo "Note: this script will not delete any data.It is just processing temporary data."
echo Enter your option: 
read option
echo Enter a word:
read word
echo Enter a file:
read file

if !(test -f $file)
then 
	echo "file not found"
	exit 1
fi

case $option in
	(-i) if !(grep $word $file); then
		echo "word not found"
		fi
		;;
	(-c) if [ $(grep -o $word $file | wc -w) -eq 0 ]; then
		echo "word not found"
		fi       
		;;
	(-d) grep -v $word $file #print all the lines that does not contain the word - reverted search
		;;
	(*) echo invalid option;;
esac



