#!/bin/bash

sudo systemctl start hostapd
sudo sysctl net.ipv4.ip_forward=1
sudo ip addr add 192.168.32.1/24 dev wlp0s20u1

sudo iptables -t nat -A POSTROUTING -o wlp3s0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i wlp0s20u1 -o wlp3s0 -j ACCEPT

sudo systemctl start dhcpd4
