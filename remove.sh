#!/bin/bash
# Script Description: Removes details from BER details 

echo "You are in a file called $0."

IntroMessage="Delete Menu: You have chosen to delete a file(s)"

echo
echo "$IntroMessage" 

PS3='Delete Menu - Please choose an option: '
 
options=("Delete First" "Delete Last" "Delete All" "Exit")
select opt in "${options[@]}"

do
    case $opt in
        "Delete First")
	echo "You have chosen to delete the first record."		
  	sed '1d' BERdetails1.txt > BERdetails.txt  # deletes first line
	cat BERdetails.txt > BERdetails1.txt 
	break
	;;

        "Delete Last")
	echo "You have chosen to delete the last record."
        sed '$d' BERdetails1.txt > BERdetails.txt  # deletes last line
	cat BERdetails.txt > BERdetails1.txt
	break
	;;

        "Delete All")
	echo "You've chosen to delete all records."
        sed 'd' BERdetails.txt > BERdetails.txt # deletes everything in the file
	break
	;;
	
        "Exit")
        echo "Returning to main menu."
        break
        sleep 1
        ;;

        *) echo "Invalid option $REPLY";;
    esac
done
