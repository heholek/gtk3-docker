#!/usr/bin/env bash

nohup broadwayd :5 &

mkdir -p /root/Desktop
mkdir -p /root/.config/nautilus
sleep 5
echo -e "\033[1mDisplay server listening on \033[36m\033[1mhttp://localhost:8085\033[0m"
