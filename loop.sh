#!/bin/bash

# Script:   201d2 Loops Challenge                    
# Author:   Jansen Lefever                    
# Date of latest revision:  1/29/21    
# Purpose:   Loops                   

# Basic for loop

#variables
psaux="ps aux"

# loop
for process in $psaux
do
  $psaux
  read -p "what process would you like to kill? Enter PID: " proc
  process=$(pidof $proc)
  kill $process
  break
done

echo done

# End