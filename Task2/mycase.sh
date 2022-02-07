#!/bin/bash
#Filename: mycase.sh
#library needed to enable regex: shopt -s extglob

#1. Write a script called mycase, using the case utility to checks the type of character entered by a user: 
#	a. Upper Case. b. Lower Case. c. Number. d. Nothing. 

shopt -s extglob

echo "This script checks the type of a character and a string."
echo "Please enter any character: "
read -n1 ch 
printf "\n"

case $ch in
	([[:lower:]]) echo lowercase letter;;
	([[:upper:]]) echo uppercase letter;;
	([[:digit:]]) echo number;;
	("") echo empty character;; #[[:blank:]] and [[:space:]] are not working
  	(*) echo undefined character;;
esac



#3. Enhanced the previous script, by checking the type of string entered by a user: 
#	a. Upper Cases. b. Lower Cases. c. Numbers. d. Mix. (Upper and lower cases, numbers)  e. Nothing. 

echo "Please enter any string: "
read s

case $s in
	+([[:upper:]])) 	
		echo "uppercase string"
		;;
	+([[:lower:]]))
		echo "lowercase string"
		;;
	+([[:digit:]]))
		echo "numbers string"
		;;
	+([[:upper:]])+([[:lower:]]))
		echo "mixed string, upper and lower case"
		;;
       	+([[:lower:]])+([[:upper:]]))
		echo "mixed string, lower and upper case"
		;;
	+([[:alpha:]])+([[:digit:]]))
		echo "mixed string, letters and numbers"
		;;
	+([[:digit:]])+([[:alpha:]]))
		echo "mixed string, numbers and letters"
		;;
	+("")) #[[:blank:]] does not match the Enter button 
		echo "empty string"
		;;
	*)
		echo "undefined string"
		;;
esac




