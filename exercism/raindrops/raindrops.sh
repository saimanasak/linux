#!/bin/bash

#Funtcion
raindrops() 
{
    #Value of the first argument is assigned to "number"
    local number="$1"

    #Checks if number is a factor of 3 or 5 or 7 and prints the value based on conditions
    if (( (number % 3 != 0) && (number % 5 != 0) && (number % 7 != 0) )); then
        echo "$number"
    else
        if ((number % 3 == 0)); then
            echo -n "Pling"
        fi
        if ((number % 5 == 0)); then
            echo -n "Plang"
        fi
        if ((number % 7 == 0)); then
            echo -n "Plong"
        fi
        echo
    fi
}

#Calling the function with all the arguments
raindrops "$@"