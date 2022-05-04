#!/bin/bash

#On Centos machine

# Variable Declaration
PACKAGE="wget unzip httpd"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2114_pixie.zip"
ART_NAME="2114_pixie"
TEMPDIR="/tmp/webfiles"

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

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r  $ART_NAME/* /var/www/html/

#Bounce Service
echo "###################Restarting HTTPD Service"
sytemcl restart $SVC

# Clean up
echo "###################Removing temporary files"
rm -rf $TEMPDIR
