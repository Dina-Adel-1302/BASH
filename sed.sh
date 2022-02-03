#!/bin/bash

#This script is exercise for sed commands. 

echo "lines contain "lp" in /etc/passwd: "
sed -n '/lp/p' /etc/passwd
echo "--------------------------------------------------------------------------------------------"

echo "printing the file except the 3rd line (bin:x:2:2....etc)"
sed '3d' /etc/passwd
echo "---------------------------------------------------------------------------------------------"

echo "printing the file except the last line (postgres:x:122:128......etc)"
sed '$d' /etc/passwd
echo "---------------------------------------------------------------------------------------------"

echo "printing the file except the lines that contain "lp"...."
sed  -e '/lp/d' /etc/passwd
echo "---------------------------------------------------------------------------------------------"

echo "substitute all words "lp" with "mylp"......"
sed  's/lp/mylp/g' /etc/passwd
echo "---------------------------------------------------------------------------------------------"







