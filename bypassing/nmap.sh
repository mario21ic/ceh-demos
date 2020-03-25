#!/bin/bash

sudo nmap --script firewall-bypass -f -T1 -S 192.168.1.8 -e enp3s0 192.168.1.11 -p80 -sV
sudo nmap -S 192.168.1.8 192.168.1.10 -sV -Pn -e enp3s0
sudo hping3 -S 192.168.1.10 -a 192.168.1.66 -c 3
sudo iptables -t nat -A POSTROUTING -p icmp -j SNAT --to-source 192.168.1.8
