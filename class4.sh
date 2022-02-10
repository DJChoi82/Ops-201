#!/bin/bash
#Class 4 Bash Script
#DJ Choi
#1/27/2022
#Writing a bash script using array to put a file in four directories

#main

#creating four directories
mkdir dir1 dir2 dir3 dir4

#declaring an array
dirs=("dir1" "dir2" "dir3" "dir4")

#creating a txt file in each array
echo >${dirs[0]}/array.txt
echo >${dirs[1]}/array.txt
echo >${dirs[2]}/array.txt
echo >${dirs[3]}/array.txt

#end
