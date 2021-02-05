# Script Name: Demo Ops 201 Class 09
# Author: Jansen Lefever
# Date of last revision: 2/4/21
# Purpose: Pulling up event logs

# Declare variablesa
# Declare functions
# Main

$Events = Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File .\Desktop\last_24.txt

$Events = Get-EventLog -LogName System -EntryType Error | Out-File .\Desktop\error.txt

Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

Get-EventLog -LogName System -Newest 20

Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source, EventID, InstanceId, Message | Out-String -Width 240
              
#End