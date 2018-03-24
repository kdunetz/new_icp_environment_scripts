#!/bin/bash
IP_ADDRESS=$1

if [ -z "$IP_ADDRESS" ]
then
   echo "Please pass IP_ADDRESS or HOSTNAME as argument"
   exit
fi

while true; 
do 

curl --insecure -L https://$IP_ADDRESS:8443; 
docker ps | wc; sleep 5; 

done
