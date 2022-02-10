#!/bin/bash
#Class7 Bash Script
#DJ Choi
#2/1/2022
#Writing a bash script to output system information and using grep

#main

#displays computer name
echo Computer name
sudo lshw | grep -m1 ""

#display cpu info
echo CPU
sudo lshw | grep -A9 "description: CPU" | grep -v "description" | grep -v "version" | grep -v "slot" | grep -v "size" | grep -v "capacity"

#display RAM info
echo RAM
sudo lshw | grep -A3 "description: System Memory" | grep -v "slot"

#display display adaptor
echo Display adaptor
sudo lshw | grep -A10 "description: VGA compatible controller" | grep -v "version"

#display network adaptor
echo Network adaptor
sudo lshw | grep -A14 "description: Ethernet interface"

#end


