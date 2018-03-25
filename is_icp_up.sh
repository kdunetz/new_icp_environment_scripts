#!/bin/bash
IP_ADDRESS=$1

if [ -z "$IP_ADDRESS" ]
then
   echo "Please pass IP_ADDRESS or HOSTNAME as argument"
   exit
fi

while true; 
do 

CURL_RESULT=`curl --insecure -L https://$IP_ADDRESS:8443/login`
echo $CURL_RESULT
docker ps | wc; 
if [[ "$CURL_RESULT" =~ "IBM Cloud Private" ]]
then
   echo -ne '\007'
   echo -ne '\007'
   echo -ne '\007'
   echo -ne '\007'
   echo -ne '\007'
   exit
fi
sleep 5; 

done
