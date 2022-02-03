#!/bin/bash

#This script is to exercise AWK commands. 

echo "printing users names ...."
awk -F: '$3>=1000 {print "user name: " $5}' /etc/passwd
echo "----------------------------------------------------------"

echo "Print login, full name (comment) and home directory of all users.(Print each line preceded by a line number)"
awk -F: '$3>=1000 {print NR,"login name:", $1, "- full name:", $5, "- home directory:", $6}' /etc/passwd
echo "----------------------------------------------------------"


echo "Print login, uid and full name (comment) of those uid is greater than 500"
awk -F : '$3>500 {print "login name:", $1, "- user ID:", $3, "- full name:", $5}'  /etc/passwd
echo "----------------------------------------------------------"

echo "Print login, uid and full name (comment) of those uid is exactly 500"
awk -F : '$3==500 {print "login name:", $1, "- user ID:", $3, "- full name:", $5}'  /etc/passwd
echo "----------------------------------------------------------"

echo "Print line from 5 to 15 from /etc/passwd "
awk -F : 'NR>=5 && NR<=15 {print NR, $0}'  /etc/passwd
echo "----------------------------------------------------------"

echo "Change lp to mylp"
awk ' $0 ~ /lp/ {gsub("lp","mylp"); print $0;}' /etc/passwd
echo "----------------------------------------------------------"

echo "Print all information about greatest uid."
awk -F : 'BEGIN {max = 0; line = 0} {if ($3>max) max=$3; if($3==max) line=$0} END {print line}' /etc/passwd
echo "----------------------------------------------------------"

echo "Get the sum of all accounts id's."
awk -F : 'BEGIN {sum = 0} {sum=sum+$3} END {print sum}' /etc/passwd 
echo "----------------------------------------------------------"


