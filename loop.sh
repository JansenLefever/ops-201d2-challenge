#!/bin/bash
 
# Script:   201d2 Loops Challenge                    
# Author:   Jansen Lefever                    
# Date of latest revision:  1/29/21    
# Purpose:   Loops                   
 
# Basic for loop
 
#variables
option="y"

while [ $option == "y" ]
do
  ps aux
  echo "what process would you like to kill? Enter PID: "
  read process
  kill -9 $process
  echo "Is there another process you would like to kill? (y/n)"
  read option
done


echo done
