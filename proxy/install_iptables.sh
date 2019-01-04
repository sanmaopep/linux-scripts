#!/bin/bash

echo ""
echo "#######################################################################"
echo "#                        INSTALL IPTABLES CHAINS                      #"
echo "#######################################################################"
echo ""

echo "基于iptables实现透明代理"
echo "Prequisite: you have installed v2ray"

echo "配置v2ray"
sudo cp /etc/v2ray/config.json /etc/v2ray/config.json.bak
sudo cp -f ./v2ray_config.json /etc/v2ray/config.json
sudo service v2ray restart

echo "网关设备开启转发"
sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak
sudo echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sudo sysctl -p

# curl -x socks5://127.0.0.1:1080 google.com && echo "v2ray失败";exit;
echo "设置iptables"
sudo apt install iptables-persistent -y

# v2ray iptables设置
sudo iptables -t nat -N V2RAY # 新建一个名为 V2RAY 的链
sudo iptables -t nat -A V2RAY -d 192.168.0.0/16 -j RETURN # 直连 192.168.0.0/16 
sudo iptables -t nat -A V2RAY -p tcp -j RETURN -m mark --mark 0xff # 直连 SO_MARK为 0xff 的流量(0xff 是 16 进制数，数值上等同与上面的 255)，此规则目的是避免代理本机(网关)流量出现回环问题
sudo iptables -t nat -A V2RAY -p tcp -j REDIRECT --to-ports 12345 # 其余流量转发到 12345 端口（即 V2Ray）
sudo iptables -t nat -A PREROUTING -p tcp -j V2RAY # 对局域网其他设备进行透明代理
sudo iptables -t nat -A OUTPUT -p tcp -j V2RAY # 对本机进行透明代理
sudo ip rule add fwmark 1 table 100
sudo ip route add local 0.0.0.0/0 dev lo table 100
sudo iptables -t mangle -N V2RAY_MASK
sudo iptables -t mangle -A V2RAY_MASK -d 192.168.0.0/16 -j RETURN
sudo iptables -t mangle -A V2RAY_MASK -p udp -j TPROXY --on-port 12345 --tproxy-mark 1
sudo iptables -t mangle -A PREROUTING -p udp -j V2RAY_MASK

# 保持iptables设置
sudo netfilter-persistent save
