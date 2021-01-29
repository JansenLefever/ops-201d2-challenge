#!/bin/bash

# Script:   ops201d2 arry challenge                    
# Author:   Jansen Lefever                    
# Date of latest revision: 1/28/21     
# Purpose:  making directories                     

# Declare global variables
directories=("dir1.txt" "dir2.txt" "dir3.txt" "dir4.txt")

make_dir="mkdir"
# Declare functions
mk_dir(){
    $make_dir ${directories[*]}
}
# Main
mk_dir 

