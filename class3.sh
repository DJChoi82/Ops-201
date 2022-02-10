#!/bin/bash
#Class 3 Bash Script
#DJ Choi
#1/26/2022
#Writing a bash script that includes a function

#main

#declaring variable
login_history=$(last)

#declaring function
print_login () {
        echo"$login_history"
}

#calling function
print_login

#end
