#!/bin/bash

echo ""
echo "#######################################################################"
echo "#                        INSTALL HTTP CHAINS                         #"
echo "#######################################################################"
echo ""

echo "Prequisite: you have installed v2ray"

echo "配置v2ray"
sudo cp /etc/v2ray/config.json /etc/v2ray/config.json.bak
sudo cp -f ./v2ray_config.json /etc/v2ray/config.json
sudo service v2ray restart

echo "配置curl"
cat > ~/.curlrc << EOF
-L
proxy = 127.0.0.1:1081
EOF
