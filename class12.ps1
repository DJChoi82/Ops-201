#Class12 PowerShell Script
#DJ Choi
#2/8/2022
#Writing PowerShell Script that returns the IPv4 address of the computer


#main

#assigning a variable
$iptxt = "network_report.txt"

#function to create a file called network_report.txt and holds the contents of an ipconfig /all command.
Function ipall {
     ipconfig /all > $iptxt
}

#function to return only the IP version 4 address from network_report txt file.
Function ipv4 {
     Select-String -Path $iptxt -Pattern 'IPv4'
}

#function to removes the network_report txt file.
Function rmtxt {
     Remove-Item $iptxt
}

#calls function ipall
ipall

#calls function ipv4
ipv4

#calls function rmtxt
rmtxt

#end
