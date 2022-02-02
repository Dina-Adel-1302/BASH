#!/bin/bash

#This script sort /etc/passwd by user name alphabet.

echo "sorting the file /etc/passwd by user name alphabet... "

sort -t : -k1 /etc/passwd
