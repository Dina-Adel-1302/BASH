#!/bin/bash
#Filename: mycase.sh


#1. Write a script called mycase, using the case utility to checks the type of character entered by a user: 
#	a. Upper Case. b. Lower Case. c. Number. d. Nothing. 

echo "Please enter any character: "
read ch

case $ch in
	([[:lower:]]) echo lowercase letter;;
	([[:upper:]]) echo uppercase letter;;
	([0-9]) echo decimal digit;;
	("") echo nothing is entered;;
  	(*) echo undefined character;;
esac



#3. Enhanced the previous script, by checking the type of string entered by a user: 
#	a. Upper Cases. b. Lower Cases. c. Numbers. d. Mix. (Upper and lower cases, numbers)  e. Nothing. 

echo "Please enter any string: "
read s


if [[ $s =~ [A-Z] ]]
then
	if [[ $s =~ [a-z] ]]
	then 	
		if [[ $s =~ [0-9] ]] 
		then 
			echo "mixed string, letters and numbers"
		else
			echo "mixed string, lower and upper cases"
		fi
	else
		echo uppercase string
	fi

elif [[ $s =~ [a-z] ]]
then 
	echo lowercase string

elif [[ $s =~ [0-9] ]]
then
	echo decimal digits

elif [[ $s = "" ]]
then
	echo empty string
else
	echo "udefined string"
fi





