#!/bin/bash

ps -e | grep aria2c
if [ $? -ne 0 ]; then
screen -dmS aria aria2c --conf-path=/root/.aria2/aria2.conf --enable-rpc --rpc-listen-all
fi
exit
