#!/bin/bash

#On Centos machine

# Variable Declaration
PACKAGE="wget unzip httpd"
SVC="httpd"
TEMPDIR="/tmp/webfiles"

# Examples of arguments given by cli:
# First arguments: URL="https://www.tooplate.com/zip-templates/2114_pixie.zip"
# Second argument: ART_NAME="2114_pixie"

# Intalling Dependencies and not showing on screen
echo "###################Packages:"
sudo yum install $PACKAGE -y > /dev/null

# Start & Enable Service
echo "###################Start & Enable Services"
sudo systemctl start $SVC
sudo systemctl enable $SVC

# Creating Temp Directory and redirecting some output -> null
echo "###################Startin Artifact Deployment"
mkdir -p $TEMPDIR
cd $TEMPDIR

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r  $2/* /var/www/html/

#Bounce Service
echo "###################Restarting HTTPD Service"
sytemcl restart $SVC

# Clean up
echo "###################Removing temporary files"
rm -rf $TEMPDIR
