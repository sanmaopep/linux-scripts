# 上网代理自动设置

## 原理

V2ray+iptables

+ V2ray：解析vmess协议，提供socks5代理

# 步骤

http代理：
1. 修改v2ray_config.json为自己v2ray服务器的相关配置
2. 执行install_v2ray.sh
3. 修改v2ray_config.json，设置服务器、ID和端口
4. 执行install_http.sh
5. 系统代理设置好即可（127.0.0.1:1081端口）

iptables透明代理配置（推荐）
1. 修改v2ray_config.json为自己v2ray服务器的相关配置
2. 执行install_v2ray.sh
3. 修改v2ray_config.json，设置服务器、ID和端口
4. 执行install_iptables.sh

# FAQ
把"port": "22512"改成"port": 22512.要注意数字、Boolean和字符串的区别，加了引号完全不是一个东西

# Update
2018/11/12
- 用v2ray自带跳过国内地址代替PAC
- 使用v2ray inboundDetour代替privoxy
- 添加iptables透明代理配置(参考https://toutyrater.github.io/app/transparent_proxy.html)