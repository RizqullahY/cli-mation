#!/bin/bash

tput civis

while true; do
    curl -s https://raw.githubusercontent.com/RizqullahY/cli-mation/master/viko-ascii.txt | \
    awk -v RS='====' '{system("clear"); print; system("sleep 0.1")}'
done

trap 'tput cnorm' EXIT
