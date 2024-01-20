#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <pattern_file>"
    exit 1
fi

filepath="/c/Users/manas/OneDrive/Desktop/Chowdary/Techie/git/linux/shell_script/scripts/file2.txt"

if [ -r "$1" ] && [ -r "$filepath" ]; then
    # Read the pattern from the file into a variable
    pattern=$(cat "$1")

    # Use double quotes around variables
    grep -F "$pattern" "$filepath" > "/c/Users/manas/OneDrive/Desktop/Chowdary/Techie/git/linux/shell_script/scripts/output.txt"
    echo "Found and copied"
else
    echo "Both files are different"
fi

