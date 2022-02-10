#!/bin/bash
#Class13 Bash Script
#DJ Choi
#2/9/2022
#Writing a bash script to output domain info to a txt file with the domain entered from the user

#main

#asking user for input
echo Enter the domain address you would like more information on.
#reading input form user
read input

#function to lookup info on a domain
whothat () {
    whois $input && dig $input && host $input && nslookup $input
}

#output results to a txt file.
whothat >domaininfo.txt

#opening txt file
gedit domaininfo.txt

#end
