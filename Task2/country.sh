#!/bin/bash
#Filename: country.sh

#6. Design a script using the case and select utility to list some countries and when we select a country it print the language of that country.

echo "Select a country:"

select choice in Kazakhstan Maldives Comoros Mauritania Sudan Quit
do 
case $choice in
	("Kazakhstan") echo "official languages are: Kazakh - Russian"
		;;
	("Maldives") echo "official languages are: Dhivehi - English"
		;;
	("Comoros") echo "official languages are: Comorian - French - Arabic"
		;;
	("Mauritania") echo "official languages are: Arabic - Pulaar - Soninke - Wolof - French" 
		;;
	("Sudan") echo "official languages are: Arabic - English"
		;;
	("Quit")
		break
		;;
	(*) echo "invalid input."
		;;
esac
echo "Select a country:"
done
