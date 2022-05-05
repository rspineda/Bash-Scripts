#!/bin/bash

MYUSERS="alpha beta gamma"

# for loop
for usr in $MYUSERS
do
	echo "Adding user $usr"
	useradd $usr
	id $usr
	echo "########################"
done

echo "out of the for loop"
echo "###################"
# while loop
counter=0

while [ $counter -lt 5 ]
do
	echo "Looping..."
	echo "Value of counter is $counter"
	counter=$(($counter + 1))
	sleep 1
done

echo "out of the while loop"
