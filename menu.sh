
#!/bin/bash
# Author: Wyne Ybanez
# Script Description: BERdetails menu

echo "Hello you’re looking at the file called $0"
IntroMessage="Welcome to BER (Building Energy Rating) details recording. What would you like to do? " 

echo
echo "$IntroMessage" 

PS3='Please choose an option: '
 
options=("Add" "Search" "Delete" "Mail" "Exit")

select opt in "${options[@]}"
do
    case $opt in

	#Add script
        "Add")
	    	echo -n "Are you sure you want to Add something? [y or n]"
		read word
		case $word in 
			[yY] | [yY][Ee][Ss] )			
  	          	./add.sh
			;;

			[nN] | [n|N][O|o] )
			echo "Cancelling request"
			exit 1
            		;;

			*) echo "Invalid Input"
			;;
	
	# Search script
        "Search")
		echo "You have chosen to search a record."
            	./search.sh
            	;;

	# Delete script
        "Delete")
		echo "Are you sure you want to delete a record?"
		read word
		case $word in 
			[yY] | [yY][Ee][Ss] )
            		./remove.sh
            		;;
			
			[nN] | [n|N][O|o] )
			echo "Cancelling request"
			exit 1
			;;

			*) echo "Invalid Input"  
			;;

	# Mail script
	"Mail")
		echo "Initiating Mail Script"
	    	./mail.sh
	    	;;	

	# Exit menu
        "Exit")
            	echo "You chose to exit. Goodbye and Goodluck!"
            	break
            	sleep 1
            	;;
	
	# Else invalid option was chosen
        *) echo "Invalid option $REPLY";;
    esac
done
