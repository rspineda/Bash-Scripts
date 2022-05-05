#!/bin/bash


echo "####################################"
date
# Deteceting if httpd process is running

ls /var/run/httpd/httpd.pid & > /dev/null
# Cheking if comand returned 0 so not fail:
if [ $? -eq 0 ]
# It can also be checking if it exists:
# if [ -f /var/run/httpd/httpd.pid ]
then
	echo "Httpd process is running"
else
	echo "Httpd process is NOT running"
	echo "Starting the process"
	systemctl start httpd
	if [ $? -eq 0 ]
	then
		echo "Process started successfully"
	else
		echo "Process starting Failed, Please contact the admin"
	fi
fi
echo "####################################"
