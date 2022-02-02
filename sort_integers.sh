#!/bin/bash

#This script sorts argument integers from high to low

echo "Please enter integers to sort, separated by spaces: "
read int1 

echo $int1 | tr " " "\n" | sort -n -r 

