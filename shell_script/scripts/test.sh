#!/bin/bash

filepath1="/c/Users/manas/OneDrive/Desktop/Chowdary/Techie/git/linux/shell_script/scripts/file1.txt"
filepath2="/c/Users/manas/OneDrive/Desktop/Chowdary/Techie/git/linux/shell_script/scripts/file2.txt"

pattern=$(cat "$filepath1")
grep -F "$pattern" "$filepath2" > "/c/Users/manas/OneDrive/Desktop/Chowdary/Techie/git/linux/shell_script/scripts/output.txt"
echo "Matched"