#Class9 PowerShell Script
#DJ Choi
#2/3/2022
#Writing PowerShell Script to get eventlogs


#main

#Making a txt file with the system log from the last 24hours.
get-eventlog -logname system -After (Get-date).AddDays(-1) | Out-File -FilePath C:\Users\DJ\Desktop\last_24.txt

#Making a txt file with all error types from the system log
get-eventlog -logname system -EntryType Error | Out-File -FilePath C:\Users\DJ\Desktop\error.txt

#Printing out eventlog with ID 16
$Events = get-eventlog -logname system -InstanceID 16
Write-Output = $Events

#Printing out eventlog of the last 20
$Events2 = get-eventlog -logname system -Newest 20
Write-Output = $Events2

#Printing out sources of the eventlog of the last 1000
$Events3 = get-eventlog -logname system -Newest 1000 | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | Format-Table -AutoSize -Wrap
Write-Output = $Events3


