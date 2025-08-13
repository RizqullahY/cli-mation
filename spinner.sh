#!/bin/bash

echo "Connect to Server"
spin='-\|/'
i=0
while [ $i -lt 20 ]; do
  i=$((i+1))
  printf "\r${spin:i%${#spin}:1}"
  sleep 0.1
done
echo -e "\nDone!"
