#!/bin/bash
 
# Script:   Ops-201-challenge 06                   
# Author:   Jansen Lefever                    
# Date of latest revision:   2/1/21      
# Purpose:   showing open ports  
 
#user input
echo "Enter ip address: "
read ip
 
#port funcution 
show_ports(){
   nc -z -v $ip 1-1023 2>&1 
}
 
#main
show_ports
 
#end
