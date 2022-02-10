#Class10 PowerShell Script
#DJ Choi
#2/4/2022
#Writing PowerShell Script to get system processes


#main

#Printing all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property cpu -Descending

#Printing all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property id -Descending

#Print the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property ws -Desending | Select-Object -first 5

#Opening Internet Explorer (iexplore.exe) going to https://owasp.org/www-project-top-ten/.
Start-Process -filepath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

#Opening Internet Explorer (iexplore.exe) ten times using a for loop and opening https://owasp.org/www-project-top-ten/
for ($i = 1; $i -le 10; $i++) { 
     Start-Process -filepath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/}

#Closing all Internet Explorer windows
stop-process -processname "msedge"

#Kill a process by its Process Identification Number.
Stop-Process -Id 16236 -Confirm -PassThru

#end
