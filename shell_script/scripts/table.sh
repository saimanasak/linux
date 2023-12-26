#!/bin/bash

n=2

for i in {1..10}

do
	r=$((n * i))
	echo -e "\n$n * $i = $r"
done
