#!/bin/sh
wget "https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz"
tar -zxvf go1.9.2.linux-amd64.tar.gz
rm -rf go1.9.2.linux-amd64.tar.gz
mkdir -p ~/code/go/src


echo '' >> ~/.profile
sudo echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.profile
sudo echo 'export GOPATH=$HOME/code/go' >> ~/.profile
sudo echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.profile

echo "reload your bash settings, either by opening a new terminal session or executing the command \'source .profile\'"
