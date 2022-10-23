#!/bin/bash
# Description: Search for a record

echo "You are at a file called $0."

PS3='Search Menu - Please choose an option: (1)Search Name (2)Search Email (3)Search Phone (4)Search BER (5)Exit'
 
options=("Search Name" "Search Email" "Search Phone" "Search BER" "Exit")
select opt in "${options[@]}"

do
    case $opt in
	# Search Name
        "Search Name")
	echo "Type Name:"
	read name
	if ! [ -z "${name}" ]
        then
                grep -i $name BERdetails.txt
        else
                echo "Warning: You entered a blank Name"
        fi
	;;

	# Search Email
        "Search Email")
	echo "Type Email:"
        read email
        if ! [ -z "${email}" ]
        then
                grep -i $email BERdetails.txt
        else
                echo "Warning: You entered a blank email"
        fi
	;;

        "Search Phone")
	echo "Type Phone Number:"
        read phone
        if ! [ -z "${phone}" ]
        then
                grep -i $phone BERdetails.txt
        else
                echo "Warning: You entered a blank phone number"
        fi
	;;
	
	"Search BER")
        echo "Type BER:"
        read BER
        if ! [ -z "${BER}" ]
        then
                grep -i $BER BERdetails.txt
        else
                echo "Warning: You entered a blank BER"
        fi
        ;;	

        "Exit")
        echo "Returning to main menu."
        ./menu.sh
        sleep 1
        ;;

        *) echo "Invalid option $REPLY";;
    esac
done
