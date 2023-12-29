#!/bin/bash

echo -e "\nEnter first number: "
read number1

echo -e "\nEnter second number: "
read number2

while true; 
do
	echo -e "\nList of Operations...\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Percentage\n6.Greatest\n7.Exit"

	echo -e "\nChoose your desired operation: "
	read option

	case $option in
		1)
			result=$((number1 + number2))
			echo -e "\nSum of given two numbers is --> $result"
			;;
		2)
			if [ "$number1" -gt "$number2" ];
			then
				result=$((number1 - number2))
				echo -e "\nDifference of given two numbers is --> $result"
			else
				result=$((number2 - number1))
				echo -e "\nDifference of given two numbers is --> $result"
			fi
			;;
		3)
			result=$((number1 * number2))
			echo -e "\nMultiplication of given two numbers is --> $result"
			;;
		4)
			result=$((number1 / number2))
			echo -e "\nDivision result of given two numbers is --> $result"
			;;
		5)
			result=$(awk "BEGIN {printf \"%.2f\", ($number1 / $number2) * 100}")
			printf "\nPercentage of given two numbers is --> $result"
			;;
		6)
			if [ "$number1" > "$number2" ];
                        then
                                echo -e "\n$number1 is the greatest of given two numbers!"
                        else
                                echo -e "\n$number2 is the greatest of given two numbers!"
                        fi
			;;
		7)
			echo -e "\nClosing...\nSee you soon... :)"
			break
			;;
		*)
			echo -e "\nPlease choose correctly!!!"
			;;
	esac
done
