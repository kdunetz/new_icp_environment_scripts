#!/bin/bash
IP_ADDRESS=$1

while true; 
do 

curl --insecure -L https://$IP_ADDRESS:8443; 
docker ps | wc; sleep 5; 

done
