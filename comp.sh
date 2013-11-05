#!/bin/bash
#Este archivo comprueba que aria2c está abierto y si no te crea un demonio 
#con escuchando por rpc para el acceso porv con la webUI
ps -e | grep aria2c
if [ $? -ne 0 ]; then
screen -dmS aria aria2c --conf-path=/root/.aria2/aria2.conf --enable-rpc --rpc-listen-all
fi
exit
