#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
	echo "You have entered in IF block"
	sleep 2
	echo "Your number is greater than 100"
	echo
	date
else
	echo "You have entered a number less than 100"
fi

echo "if else script execution completed successfully"

echo "########################################"
echo "Number of network cards you have:"

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
	echo "1 Active Network Interface found"
elif [ $value -gt 1 ]
then
	echo "Found multiple active interfaces"
else
	echo "No active interface found"
fi



