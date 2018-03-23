#!/bin/bash

while true; 
do 

curl https://localhost:8443; 
docker ps | wc; sleep 5; 

done
