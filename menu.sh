#!/bin/bash
# Author: Wyne Ybanez
# Script Description: BERdetails menu

echo "Hello you’re looking at the file called $0"
IntroMessage="Welcome to BER (Building Energy Rating) details recording. What would you like to do? " 

echo
echo "$IntroMessage" 

PS3='Main menu - Please choose an option: (1)Add (2)Search (3)Delete (4)Mail (5)Exit '
 
options=("Add" "Search" "Delete" "Mail" "Exit")
select opt in "${options[@]}"

do
    case $opt in
        "Add")
	echo "You have chosen to add a record."		
  	./add.sh
	cat BERdetails.txt
	;;

        "Search")
	echo "You have chosen to search a record."
        ./search.sh
        ;;

        "Delete")
	echo "You've chosen to delete a record."
        ./remove.sh
	cat BERdetails.txt
        ;;

	"Mail")
	echo "Initiating Mail Script"
	./mail.sh
	;;
	
        "Exit")
        echo "You chose to exit. Goodbye and Goodluck!"
        break
        sleep 1
        ;;

        *) echo "Invalid option $REPLY";;
    esac
done
 
