#!/bin/bash
# Description: Add a record/field to text file

echo "You are at a file called $0."

count=0
while [ $count -lt 6 ]
do
   if [ $count -eq 0 ]
 
   then
      echo "Please enter contacts' Full Name: "
      read name
      	# Checks the entered name is not blank
      	if ! [ -z "${name}" ]
      	then
        	count=$((count+1))
      	else
       		echo "Warning: You cannot enter a blank Name"
      	fi

      echo "Please enter the contact's Eircode: "
      read eircode	
	# Checks the entered Eircode is not blank
	if ! [ -z "${eircode}" ]
	then
		count=$((count+1))
	else
		echo "Warning: You entered a blank Eircode"
	fi
      
      echo "Please enter contact's Phone number: "
      read phone
	# Checks the entered phone number
	if ! [ -z "${phone}" ]
	then 
		count=$((count+1))
	else 
		echo "Warning: You entered a blank Phone Number"
	fi

      echo "Please enter contact's Email Address: "
      read email
	# Checks the entered email address
	if ! [ -z "${email}" ]
	then 
		count=$((count+1))
	else 
		echo "Warning: You entered a blank Email Address"
	fi

      echo "Please enter BER grade: "
      read grade 
	# Checks for the BER grade
	if ! [ -z "${grade}" ]	
	then 
		count=$((count+1))
	else 
		echo "Warning: You entered a blank BER grade"
	fi

      echo "Please enter Year: "
      read year 
	# Checks for year of grading
	if ! [ -z "${year}" ]
	then 
		count=$((count+1))
	else 
		echo "Warning: You entered a blank year"
	fi 
   fi


# This re-displays the data entered so the user can confirm.
echo "----------- Entered Data ---------------------------------------------"
echo $name "; " $eircode "; " $phone "; " $email "; " $grade "; " $year ";" 
echo "----------------------------------------------------------------------"

echo -n "Are you sure you want to add this contact (y/n) :"

read answer
if [[ "$answer"  ==  "y" || "$answer" == "Y" ]]
then
   echo "--------------------------------------------------------------------------"
   echo $name" ; "$eircode" ; "$phone" ; "$email" ; "$grade" ; "$year" ; " "added successfully"
   echo "--------------------------------------------------------------------------"
   echo $name" ; "$eircode" ; "$phone" ; "$email" ; "$grade" ; "$year" ; " >> BERdetails1.txt
   cat BERdetails1.txt > BERdetails.txt
else
   echo "Contact has not been added"
   ./menu.sh
fi


# Ask the user for their next action
echo 
echo "What's next?"
echo 
echo "Do you want to add another contact?"
echo "Enter y to proceed, n to return to the main menu or anything other key to exit"

read answer

case $answer in
    [yY] | [yY][eE][sS] )
        ./add.sh;;
    [nN] | [nN][oO] )
        ./menu.sh;;
    *) echo exit;;
esac


done

