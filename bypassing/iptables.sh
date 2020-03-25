#!/bin/sh
sudo iptables -F
sudo iptables -X
# denegar todos los ports
sudo iptables -I OUTPUT -p tcp --match multiport --dports 9200:10000 -j REJECT
# aceptar salida de un user
sudo iptables -I OUTPUT -p tcp -m owner --uid-owner vagrant --match multiport --dports 9200:10000 -j ACCEPT
sudo iptables -n -L -v

