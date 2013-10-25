#!/bin/bash


# COMMAND LINE ARGUMENTS
# ./send_exec.sh buildPath arduinofile Password_BB
# A bash script to upload an executable binary to beagleboard and return the output


USERNAME="root"
LOCATION=$1
FILE=$2
PASSWORD=$3
IP=$4
EXECUTABLE=${FILE}
echo
echo -n "Transfering $LOCATION/${EXECUTABLE} to ${USERNAME}@${IP}..."
/usr/bin/sshpass -p ${PASSWORD} scp -q $LOCATION/${EXECUTABLE} ${USERNAME}@${IP}:~/${FILE}
echo "Executing!"
echo
echo
echo "Begin output log"
echo "===================="
/usr/bin/sshpass -p ${PASSWORD} ssh ${USERNAME}@${IP} -t ./${FILE} > log/${FILE}.log 2> log/${FILE}.log

return_result=$?

if [ ${return_result} = 130 ] ; then
    exit 0
fi

