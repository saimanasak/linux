#!/bin/bash

file_path1="file1.txt"
file_path2="file2.txt"

if [ -r "$file_path1" ] && [ -r "$file_path2" ]; then
	echo -e "\nFiles are readable!"
        if [ -s "$file_path1" ] && [ -s "$file_path2" ]; then
		echo -e "\nNow, checking for the matched content..."
	    	sleep 5
	    	pattern=$(cat "$file_path1")
	    	grep -F "$pattern" "$file_path2" > "output.txt"
	    	echo -e "\nFinally, matched content has been copied!"
    	else
		echo -e "\nFiles are empty!"
        fi
else
	echo -e "\nOops! Files aren't readable."
fi
