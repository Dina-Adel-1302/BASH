#!/bin/bash

#1. Write a script called mychmod using for utility to give execute permission to all files in your home directory.

echo "This script gives execute permission to all files in home directory"

cd ~

for file in `ls /home/$USER`
do
	if [ -z `chmod +x $file` ]; then 
		echo "$file :execution permission succeeded"
	fi
done


