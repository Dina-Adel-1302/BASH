#!/bin/bash
#filename: challenge1.sh

#Challenge 1:

# Create a directory with a name of<yourName>-<currentDate>.

# Write a bash script to: 
#	o Create twenty-five empty (0 KB) files (Hint: Use the touch command).
#	o The file names should be
#	   <yourName><number>,<yourName><number+1>,<yourName><number+2> and so on. 
#	o Design the script so that each time you execute it, it creates the next batch of 25 files with increasing numbers
#	  starting with the last or max number that already exists.
#	o Do not hard code these numbers. You need to generate them using automation. 

user=$USER
num=0
dir=$user-`date +%d-%m-%Y` 

if [ ! -d $dir ]; then
	mkdir $dir
fi

cd  $user-`date +%d-%m-%Y`

		     #sort reversed, numerically 
max=`ls | grep $user | sort -r -n -t "-" -nk2 | head -1 | cut -f2 -d -`

for i in {1..25}
do
	num=$((i+max))
        touch $user-$num
done

if [ -z $max ]; then
	echo files from $user-0 to $user-$num created successfully.
else
	echo files from $user-$max to $user-$num created successfully.
fi


