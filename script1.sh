#This script creates script inside script.

echo "Please enter your name: "
read name

echo "Hello $name, I am Dina's first script :) wish me luck :)"
echo "Please enter the value of x: "
read x
echo "x = $x"
echo "---------------------------"
#--------------------------script2-----------------------
cat > script2.sh <<EOF2
#!/bin/bash
echo "I am script2"
echo "I know that x = $x"
EOF2
#------------------------END script2---------------------
chmod +x script2.sh
#./script2.sh
