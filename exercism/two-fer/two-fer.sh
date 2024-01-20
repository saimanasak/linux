#!/usr/bin/env bash

#Function
two_fer()
{
    #Value of the first argument is assigned to "name"
    local name="$1"

    #Checks if the name is empty and prints based on condition
    if [ -z "$name" ]; then
        echo "One for you, one for me."
    else
        echo "One for $name, one for me."
    fi
}

#Calling the function with all the arguments
two_fer "$@"