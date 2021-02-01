#!/bin/bash

# Script:   Ops-201-challenge 06                   
# Author:   Jansen Lefever                    
# Date of latest revision:   2/1/21      
# Purpose:   showing open ports  

#user input
echo "Enter ip address: "
read ip
options=("open" "closed" "all" "quit")
select opt in "${options[@]}"; do
    case $opt in
        "open")
            nc -z -v $ip 1-1023 2>&1 | grep succeeded
            ;;
        "closed")
            nc -z -v $ip 1-1023 2>&1
            ;;
        "all")
            nc -z -v $ip 1-1023
            ;; 
        "quit")
	        echo "User requested exit"
	        exit
            ;;
        *) echo "incorrect input" 
    esac
done           

#end