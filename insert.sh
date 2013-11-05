#!/bin/bash
#mata aria2c, para que el archivo insert.sh (se ejecuta cada minuto) vuelva a abrirlo con el parametro de entrada el archivo generado "direcc"
pkill aria2c
wget -O /home/archivos/rtorrent/torrents/rss.xml 'http://showrss.info/rss.php?user_id=152366&hd=null&proper=null'
xmllint --xpath ' //item/link/text()' /home/archivos/rtorrent/torrents/rss.xml > /home/archivos/rtorrent/torrents/direcc
cc=`cat /home/archivos/rtorrent/torrents/direcc`
echo -e  ${cc//magnet:?xt/"\r\nmagnet:?xt"} > /home/archivos/rtorrent/torrents/direcc


exit


