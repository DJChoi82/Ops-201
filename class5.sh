#!/bin/bash
#Class5 Bash Script
#DJ Choi
#1/28/2022
#Writing a bash script using loops

#main

#declaring variable to a list of processees
processes=$(ps -aux)

#displays processes
echo "$processes"

#creating loop
for (( ; ; ))
  do
    #asking user to enter PID to kill
    echo Enter the PID of the process you would like to end. Enter q to quit. 
    #reading PID
    read PID
    #displaying which PID its killing
    echo Killing $PID
    #killing process by PID
    kill -9 $PID
#quit if user quits
if [ $PID == "q" ]
  then
    #displaying when script ends
    echo Bye!
    exit 0
    fi
done

