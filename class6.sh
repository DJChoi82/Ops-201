#!/bin/bash
#Class6 Bash Script
#DJ Choi
#1/31/2022
#Writing a bash script using list, loop, and conditional

#main


#creating a loop
for (( ; ; ))
do

#asking user for input
echo Would you like to create a file or directory? Enter quit to quit.
#reading input form user
read input

# quitting the loop if user inputs quit
if [[ "$input" == "quit" ]]; then
   echo Have a good day!
   exit 0
else

#asking user for input
echo Enter the name of the file or directory you like to create
#reading input form user
read input2
fi

#checking if file or directory exits
if [[ -f "$input2" || -d "$input2" ]]; then 
    echo File exist.
else 

#creating a file with user entered filename
if [[ "$input" == "file" ]]; then
    touch $input2
    echo $input2 has been created
fi

#creating a directory with user entered directory
if [[ "$input" == "directory" ]]; then
    mkdir $input2
    echo $input2 has been created
fi
fi
done
