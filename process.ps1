# Script Name: Demo Ops 201 Class 10
# Author: Jansen Lefever
# Date of last revision: 2/5/21
# Purpose: Pulling up and killing processes
Get_Proc{
    
    Get-Process * | Sort-Object -Property CPU -Descending

    Get-Process * | Sort-Object -Property Id -Descending
    
    Get-Process * | Sort-Object -Property WS -Descending | Select -First 5  
}
# Main
# Reference https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process?view=powershell-7
# Get a list of all active processes on the local computer

Get_Proc

Start-Process msedge.exe https://owasp.org/www-project-top-ten/

for ($i = 1 ; $i -le 10 ; $i++)
{
    Start-Process msedge.exe https://owasp.org/www-project-top-ten/
}

Stop-Process -Name msedge

taskkill /F /PID 8056 #Kill Spotify