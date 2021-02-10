# Script Name: Demo Ops 201 Class 12
# Author: Jansen Lefever
# Date of last revision: 2/9/21
# Purpose: Pulling up IP Address

#Variable 
$target = ipconfig /all

$target > C:\Users\Driver8\Desktop\network_report.txt
    
Out-File .\network_report.txt
    
Select-String -Path "C:\Users\Driver8\Desktop\network_report.txt" -Pattern "Address:"
    
rm C:\Users\Driver8\Desktop\network_report.txt

#So I have no idea why but I can't seem to get Select-String to work.
#I've tried a bunch of different comabtions of things with little sucess.
#Including putting the path in front followed by a |.
#I've been at this for over an hour. Everyone else had signed off. I decided to take the L on this one.