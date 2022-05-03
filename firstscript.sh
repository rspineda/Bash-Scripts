#!/bin/bash

### This script prints system info ###
echo "Ey Ronald, que tal desde el otro lado de la pantalla!"

#checking system uptime
echo "###################"
echo "The system uptime is:"
uptime

#Memory utilization
echo "###################"
echo "Memory utilization is":
free -m

#Disk utilization
echo "##################"
echo "Disk utilization is"
df -h

