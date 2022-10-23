#!/bin/bash
# Author: .....
# Script Description: Bash Menu Script Example

PS3='Please enter your choice: '
options=("Add" "Search" "Delete" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Add")
            ./add.sh
            ;;
        "Search")
            ./search.sh
            ;;
        "Delete")
            ./remove.sh
            ;;
        "Exit")
            echo "You chose to exit. Bye!"
            break
            sleep 1
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

