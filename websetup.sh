#!/bin/bash

#On Centos machine

# Intalling Dependencies and not showing on screen
echo "###################Packages:"
sudo yum install wget unzip http -y > /dev/null

# Start & Enable Service
echo "###################Start & Enable Services"
sudo systemctl start httpd
sudo systemctl enable httpd

# Creating Temp Directory and redirecting some output -> null
echo "###################Startin Artifact Deployment"
mkdir -p /tmp/webfiles
cd /tmp/webfiles

wget https://www.tooplate.com/zip-templates/2114_pixie.zip > /dev/null
unzip 2114_pixie.zip > /dev/null
sudo cp -r  2114_pixie/* /var/www/html/

#Bounce Service
echo "###################Restarting HTTPD Service"
sytemcl restart httpd

# Clean up
echo "###################Removing temporary files"
rm -rf /tmp/webfiles
