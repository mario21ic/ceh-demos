#!/bin/bash

sudo nmap --script firewall-bypass -f -T1 -S 192.168.1.8 -e enp3s0 192.168.1.11 -p80 -sV

