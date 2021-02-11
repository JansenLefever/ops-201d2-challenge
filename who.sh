#!/bin/bash

# Script: Reveals Public Info About Targeted Website                     
# Author: Jansen Lefever                      
# Date of latest revision: 2/10/21     
# Purpose: Asks user for website it would like to reveal information about.                     

#Varibles


#funcutions
web-info(){
    echo "What website would you like info on?"
    read target
    whois $target >> $target.txt
    dig $target >> $target.txt
    host $target >> $target.txt
    nslookup $target >> $target.txt
}

web-info 