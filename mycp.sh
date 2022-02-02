#!/bin/bash 

#This script copies files from /home/user/test to /home/user/desktop/test/

mkdir ~/test
mkdir ~/Desktop/test

cd ~/test
touch test1 test2 test3

cp test1 ~/Desktop/test/ 
echo "test1 has been copied"
echo "listing directory: ~/Desktop/test/"
ls ~/Desktop/test/

cd ~/test
cp -t ~/Desktop/test/ test2 test3 

echo "test2 test3 has been copied"
echo "listing directory ~/Desktop/test/"
ls ~/Desktop/test/

rm -r ~/Desktop/test
rm -r ~/test


