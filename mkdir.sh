#!/bin/bash

# Script:   ops201d2 arry challenge                    
# Author:   Jansen Lefever                    
# Date of latest revision: 1/28/21     
# Purpose:  making directories                     

# Declare global variables
directories=(
    [0]="./folder"
    [1]="./folder/dir1" 
    [2]="./folder/dir2" 
    [3]="./folder/dir3" 
    [4]="./folder/dir4"
    )

# Declare functions
mk_dir(){
    mkdir ${directories[*]}
    touch ./folder/dir1/fileA
    touch ./folder/dir2/fileB
    touch ./folder/dir3/fileC
    touch ./folder/dir4/fileD


}
# Main
mk_dir