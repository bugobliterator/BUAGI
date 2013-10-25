#!/bin/bash


IP="beaglebone.local"
USERNAME="root"
FILE=$1
PASSWORD=$2
EXECUTABLE=${FILE}
/usr/bin/sshpass -p "$PASSWORD" ssh  ${USERNAME}@${IP} "pkill -9 ${FILE}."
