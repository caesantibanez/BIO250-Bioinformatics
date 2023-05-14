#!/bin/bash
echo -en "Please enter a number:"
read X

if [ "$X" = "0" ]; then
	echo "Your number is 0"
else
	echo "Your number is greater than 0"
fi
