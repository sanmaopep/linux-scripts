#!/bin/bash

echo ""
echo "#######################################################################"
echo "#                        INSTALL PROXY CHAINS                         #"
echo "#######################################################################"
echo ""

# install pip
sudo apt install python-pip -y
# install v2ray
bash <(curl -L -s https://install.direct/go.sh)
# install privoxy
sudo apt install -y privoxy

# v2ray listen at 1080
sudo cp /etc/v2ray/config.json /etc/v2ray/config.json.bak
sudo cp -f ./v2ray_config.json /etc/v2ray/config.json
sudo service v2ray restart

# privoxy listen at 8118
sudo pip install gfwlist2privoxy
sudo cp /etc/privoxy/default.action /etc/privoxy/default.action.bak 
sudo gfwlist2privoxy -i ./gfwlist.txt -f /etc/privoxy/default.action -p "127.0.0.1:1080" -t socks5
sudo service privoxy restart

