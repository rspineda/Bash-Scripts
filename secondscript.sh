#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "###############################"
FREERAM= $(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "Available free RAM is $FREERAM MB"
echo "Current Load Average is $LOAD"
echo "Free ROOT partition size is $ROOTFREE"

