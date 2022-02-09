#!/bin/bash
#filename: mybackup.sh

#2. Write a script called mybackup using for utility to create a backup of only files in your home directory. 

echo "This script creates a backup of only files in home directory."

cd ~
mkdir mybackup_test

#copy all files in home directory to mybackup_test, except directories and tar files
for f in *; do
    case $(file --mime-type -b "$f") in
        inode/directory) continue ;;
        application/x-tar) continue ;;
        *) cp $f mybackup_test/;;
    esac
done

cd mybackup_test/
echo archiving....
tar cvf archived_home.tar *
echo files archived successfully 

rm -r ~/mybackup_test

