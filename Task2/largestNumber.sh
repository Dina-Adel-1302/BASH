#!/bin/bash
#Filename: largestNumber.sh

#7. Create a Bash script which will take 2 numbers as command line arguments. It will print to the screen the larger of the two numbers.

if [ $1 -gt $2 ]
then
	echo "$1 > $2"
elif [ $1 -lt $2 ]
then
	echo "$1 < $2"
elif [ $1 -eq $2 ]
then
	echo "$1 = $2"
#This condition is not working
elif [ $# -eq 0 ] 
then
	echo "no arguments"
	exit 1
else
	echo "invalid input"
fi	



