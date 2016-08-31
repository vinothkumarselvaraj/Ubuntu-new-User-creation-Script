#!/bin/bash
#
# Vinoth Kumar Selvaraj
# E-Mail: vinothkumar6664@me.com
# Ubuntu new User creation Script
#
#

#usage: bash usercreate.bash --username $username
#Example: bash usercreate.bash --username vinoth

# Execute getopt
ARGS=$(getopt -o a -l "username:" -- "$@");

user=$2

adduser --disabled-password --gecos "" $user
usermod -aG sudo $user
passwd -d $user
chage -d 0 $user

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "USER $user HAS BEEN CREATED "
echo "SET PASSWORD FOR USER $user DURING THE NEXT LOGIN"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++"
