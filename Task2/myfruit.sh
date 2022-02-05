#!/bin/bash
#Filename: myfruit.sh

#5. Write a script called myfruit, using the case and select utility to list fruit option (apple, banana and kiwi):
#	-if select apple option, list another three options for me (red, yellow, green) and after selection return to first list.
#	-if select banana option, list another two options for me (yellow, green) and after selection return to first list.
#	-Break the script when select quit option

echo "What is your favourite fruit: "

select choice in apple banana kiwi quit
do
    case $choice in
        ("apple")
            echo "What is your favourite apple color?" 
	    	select color in red yellow green quit
		do
	 	case $color in
			("red") echo "Did you know that The McIntosh, or the Mac, is an apple that has red and green skin.";;
			("yellow") echo "Did you know that there are 11 types of yellow apple." ;;
			("green") echo "Green apples are rich in Vitamin C, Vitamin A, antioxidants." ;;
			("quit") break ;;
			(*) echo "invalid input";;
		esac
		echo "What is your favourite apple color?" 
		done
		;;
        ("banana")
		echo "What is your favourite banana color: "
            	select color in yellow green quit
                do
                case $color in
                        ("yellow") echo "Bananas contain fiber, potassium, folate, and antioxidants, such as vitamin C." ;;
                        ("green") echo "Green bananas are simply unripe yellow bananas that haven’t converted much of their resistant starch into more easily digestible sugars." ;;
                        ("quit") break ;;
                        (*) echo "invalid input";;
                esac
		echo "What is your favourite banana color: "	
                done
		;;	
        ("kiwi")
            echo "Kiwi can support heart health, digestive health, and immunity."
            ;;
        ("quit")
            break
            ;;
        (*) echo "invalid option";;
    esac
echo "What is your favourite fruit: "
done


