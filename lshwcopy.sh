#!/bin/bash

# Script: Scanning for objects                      
# Author: Jansen Lefever                      
# Date of latest revision: 2/2/21     
# Purpose: Scanning individual objects within your linux computer                     

#funcutions 

list_cpu(){
    lshw | grep cpu 
    lshw | grep product
    lshw | grep vendor
    lshw | grep physical id
    lshw | grep bus info
    lshw | grep width
}
list_ram(){
    lshw | grep ram
    lshw | grep description
    lshw | grep physical id
    lshw | grep size    
}
list_dis(){
    lshw | grep description
    lshw | grep product
    lshw | grep vendor
    lshw | grep physical id
    lshw | grep bus info
    lshw | grep width
    lshw | grep clock
    lshw | grep capabilities
    lshw | grep configuration
    lshw | grep resources
}
list_net(){
    lshw | grep description
    lshw | grep product
    lshw | grep vendor
    lshw | grep physical id
    lshw | grep bus info
    lshw | grep logical name
    lshw | grep version
    lshw | grep serial
    lshw | grep size
    lshw | grep capacity
    lshw | grep width
    lshw | grep clock
    lshw | grep capabilities
    lshw | grep configuration
    lshw | grep resources
}

#variable 

options=("CPU INFO:" "RAM INFO:" "DISPLAY ADAPTER:" "NETWORK ADAPTER:" "BIOS:" "quit")

#main
lshw | grep name
select opt in "${options[@]}"; do
    case $opt in
        "CPU INFO:")
            echo "CPU INFO"
            list_cpu
            echo "1) CPU INFO: 2)RAM INFO: 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER:  5) BIOS:  6) quit"
            ;;
        "RAM INFO:")
            echo "RAM INFO"
            list_ram
            echo "1) CPU INFO: 2) RAM INFO 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER 5) BIOS: 6) quit"
            ;;
        "DISPLAY ADAPTER:")
            echo "DISPLAY ADAPTER:"
            list_dis
            echo "1) CPU INFO: 2) RAM INFO 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER: 5) BIOS: 6) quit"
            ;;
        "NETWORK ADAPTER:")
            echo "NETWORK ADAPTER:"
            list_net
            echo "1) CPU INFO: 2) RAM INFO: 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER: 5) BIOS: 6) quit"
            ;;
        "BIOS:")
            echo "BIOS:"
            dmidecode
            echo "1) CPU INFO: 2) RAM INFO: 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER: 5) BIOS: 6) quit"
            ;;
        "quit")
	        echo "User requested exit"
            exit                ;;
        *) echo "incorrect input"
            echo "1) CPU INFO: 2) RAM INFO: 3) DISPLAY ADAPTER: 4) NETWORK ADAPTER: 5) BIOS: 6) quit" 
        esac
    done     
done
#end
