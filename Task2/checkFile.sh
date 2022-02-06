#!/bin/bash
#Filename: checkFile.sh

#8. Create a Bash script which will accept a file as a command line argument and analysis it in certain ways.
#e.g.you could check if the file is executable or writable. You should print a certain message if true and another if false.

if  test -f $1
then
	x="do nothing"
else
	echo "file not found"
	exit 1
fi

test -r $1 && echo "the file $1 is readable." || echo "the file $1 is not readable."

test -w $1 && echo "the file $1 is writeable." || echo "the file $1 is not writeable."

test -x $1 && echo "the file $1 is executeable." || echo "the file $1 is not executeable."

