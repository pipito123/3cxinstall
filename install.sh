#!/bin/bash

echo "Updating system..."
sudo apt update --yes

echo "INSTALL new apps"
sudo apt-get install net-tools tshark mtr wireshark davfs2 cifs-utils net-tools dphys-swapfile -y

cd /home/omadmin/
wget -o file https://github.com/pipito123/3cxinstall/blob/master/Integration.zip

echo "Install 3CX PBX"
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update 
