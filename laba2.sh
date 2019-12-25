#!/bin/bash
sudo apt-get install git
wget -c https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xvzf go1.13.1.linux-amd64.tar.gz 
mkdir -p ~/go
mkdir -p ~/go_projects/{bin,src,pkg} 
echo 'export PATH=$PATH:/usr/local/go/bin' » /etc/profile
echo 'export GOPATH="$HOME/go_projects"' » ~/.profile
echo 'export GOBIN="$GOPATH/bin"' » ~/.profile 
source ~/.profile
git clone https://github.com/yggdrasil-network/yggdrasil-go.git
cd yggdrasil-go
./build 
