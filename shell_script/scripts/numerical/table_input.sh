#!/bin/bash

echo -e "\nEnter a number: "
read n

for i in {1..10}
do
	r=$((n * i))
	echo -e "\n$n * $i = $r"
done
