#My First Bash Script
#DJ Choi
#1/25/2022
#Script fetches network information and saves to txt

#main
#gets network info and assigns to a variable network_info
network_info=$(ifconfig)

#creates a new text file called output
touch output.txt

#saves network information in the txt file
echo "$network_info" >output.txt

#end
