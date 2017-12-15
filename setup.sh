#!/bin/sh


# 安装好ss后建议重启（有些软件需要翻墙）
sh './shells/pre.sh'
sh './shells/beauty.sh'
sh './shells/softwares.sh'

sudo apt install expect -y
expect './shells/developer.sh'
