#!/bin/bash

sudo iptables -F
sudo iptables -X
sudo iptables -I INPUT -p tcp --match multiport --dports 80:10000 -j REJECT
sudo iptables -I INPUT -p tcp -s 192.168.1.8 --match multiport --dports 80:10000 -j ACCEPT

