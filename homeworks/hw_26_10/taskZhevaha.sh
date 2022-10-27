#!/bin/bash
for loop in {1..10}
do
varDate=$(date +%H%M%S)
touch ${loop}${varDate}
done
