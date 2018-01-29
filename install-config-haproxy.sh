#!/bin/sh

sudo add-apt-repository ppa:vbernat/haproxy-1.7
sudo apt update
sudo apt-get install -y haproxy
haproxy -v

echo "To configure HAPROXY"
echo "sudo nano /etc/haproxy/haproxy.cfg"

echo "To restart HAPROXY"
echo "sudo systemctl restart haproxy"