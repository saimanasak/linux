#!/usr/bin/env bash

#Checks if there's any argument and prints the message according to condition
if [ "$#" -eq 1 ]; then
  echo "Hello, $1"
else
  echo "Usage: error_handling.sh <person>"
  exit 1
fi