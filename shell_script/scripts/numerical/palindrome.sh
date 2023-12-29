#!/bin/bash

echo -e "\nEnter a number to check palindrome: "
read number

declare -a rev_array
rev_number=""

length=${#number}

for ((i = length - 1; i >= 0; i--));
do
    rev_array+=${number:$i:1}
done

for alpha in "${rev_array[@]}";
do
	rev_number="${rev_number}${alpha}"
done

if [ "$number" == "$rev_number" ];
then
	echo -e "\nYour given number is a palindrome!"
else
	echo -e "\nYour given number isn't a palindrome!"
fi
