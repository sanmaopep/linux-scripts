wget -O gfwlist.txt https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
sudo gfwlist2privoxy -i ./gfwlist.txt -f /etc/privoxy/default.action -p "127.0.0.1:1080" -t socks5
sudo service privoxy restart
