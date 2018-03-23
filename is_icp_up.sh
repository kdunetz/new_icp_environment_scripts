#!/bin/bash

while true; 
do 

curl --insecure -L https://localhost:8443; 
docker ps | wc; sleep 5; 

done
