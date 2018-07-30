# 上网代理自动设置

## 原理

V2ray+privoxy

+ V2ray：解析vmess协议，提供socks5代理
+ privoxy：将所有协议转为socks5

# 步骤

1. 修改v2ray_config.json为自己v2ray服务器的相关配置
2. 准备好gfwlist.txt：https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
3. 执行install.sh即可
4. 系统代理设置好即可（127.0.0.1:8118端口）

# FAQ
把"port": "22512"改成"port": 22512.要注意数字、Boolean和字符串的区别，加了引号完全不是一个东西

