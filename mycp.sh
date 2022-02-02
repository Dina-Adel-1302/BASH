#!/bin/bash 

#This script copies files from /home/user/test to /home/user/desktop/test/

mkdir ~/test
mkdir ~/Desktop/test

touch ~/test/test1 
touch ~/test/test2
touch ~/test/test3

cp ~/test/test1 ~/Desktop/test/ 
echo "test1 has been copied"
echo "listing directory: ~/Desktop/test/"
ls ~/Desktop/test/


cp ~/test/test1 ~/test/test2 ~/test/test3 ~/Desktop/test/
echo "test2 test3 has been copied"
echo "listing directory ~/Desktop/test/"
ls ~/Desktop/test/




