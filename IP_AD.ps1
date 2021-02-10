# Script Name: Demo Ops 201 Class 12
# Author: Jansen Lefever
# Date of last revision: 2/9/21
# Purpose: Pulling up IP Address

#Variable 
$target = ipconfig /all

#main
$target > C:\Users\Driver8\Desktop\network_report.txt
    
Out-File .\network_report.txt
    
Select-String -Path "C:\Users\Driver8\Desktop\network_report.txt" -Pattern "IPv4 Address"
    
rm C:\Users\Driver8\Desktop\network_report.txt

