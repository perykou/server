#!/bin/bash
pkill aria2c
wget -O /home/archivos/rtorrent/torrents/rss.xml 'http://showrss.info/rss.php?user_id=152366&hd=null&proper=null'
xmllint --xpath ' //item/link/text()' /home/archivos/rtorrent/torrents/rss.xml > /home/archivos/rtorrent/torrents/direcc
#sed -i '/'magnet'/'prrrrrr/g' /home/archivos/rtorrent/torrents/direcc
#cadena= cat "/home/archivos/rtorrent/torrents/direcc"
cc=`cat /home/archivos/rtorrent/torrents/direcc`
echo -e  ${cc//magnet:?xt/"\r\nmagnet:?xt"} > /home/archivos/rtorrent/torrents/direcc


exit


