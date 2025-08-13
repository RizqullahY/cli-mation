#!/bin/bash

# Sembunyikan kursor saat animasi
tput civis

# Loop tanpa henti
while true; do
    curl -s https://raw.githubusercontent.com/RizqullahY/cli-mation/master/viko-ascii.txt | \
    awk -v RS='====' '{print; system("sleep 0.1")}'
done

# Tampilkan kursor lagi saat keluar
trap 'tput cnorm' EXIT
