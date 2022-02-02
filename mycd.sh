#!/bin/bash

#This script changes working directory to a given argument directory.

echo "Please enter directory: "
read dir
 
cd $dir

echo "your current working directory is: $PWD" 
