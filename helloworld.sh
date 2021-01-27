#!/bin/bash

# Script Name:                  Hello World 
# Class Name:                   Ops 201
# Author Name:                  Jansen Lefever
# Date of latest revision:      1/26/2021
# Purpose:                      get network info

# Declaration
net_info=$(ip a) 

# call
echo $net_info > output.txt
