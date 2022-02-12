#!/bin/bash
#filename: challenge2.sh
#library to enable regular expression: shopt -s extglob

#Challenge 2:

#Design script that:
#	- Get first name (str) , second name (str), phone number (int), Department (str), Salary (int)
#	- Validate for input type, reject what’s not matched the input type
#	- Don’t accept duplicated phone number
#	- Save new employee record in your database file.
#	- Print the insertion done successfully.

shopt -s extglob

echo "This script saves employees data."

fname=""
lname=""
phone=""
dept=""
salary=""


#================First name=============================================
while true
do
	echo "Enter your first name (english letters only):"
	read fname

	[[ $fname == +([[:alpha:]]) ]] && break	|| echo "invalid input."
done

#=================Last name===============================================
while true
do
	echo "Enter your last name (english letters only):"
	read lname
	[[ $lname == +([[:alpha:]]) ]] && break || echo "invalid input."
done

#===================phone number===========================================
while true
do
	echo "Enter your phone number (english numbers only): "
	read phone
	[[  $phone == +([[:digit:]]) ]] && break || echo "invalid input."
done

#====================Department============================================
while true
do
	echo "Enter your department (english letters only): "
	read dept
	[[ $dept == +([[:alpha:]]) ]] && break || echo "invalid input."
done

#==================Salary=================================================
while true
do
	echo "Enter your salary (english numbers only):"
	read salary
	[[ $salary == +([[:digit:]]) ]] && break || echo "invalid inputs."
done

if [ ! -f employees.txt ]; then
	touch employees.txt
fi

echo $fname $lname:$phone:$dept:$salary >> employees.txt

#remove empty lines
cat employees.txt | sed '/^$/d' | tee employees.txt >/dev/null

echo "your information has been registered successfully."
