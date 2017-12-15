echo ""
echo "#######################################################################"
echo "#                     INSTALL DEVELOPER TOOLS                         #"
echo "#######################################################################"
echo ""

# sudo add-apt-repository ppa:lyzardking/ubuntu-make -y
# sudo apt-get update -y
# sudo apt-get install ubuntu-make -y
sudo snap install ubuntu-make --classic

# 安装Eclipse 基础Java版
umake ide eclipse

# 安装Android的开发环境
# umake android android-sdk
# umake android android-ndk
# umake android android-studio


# # 安装Visual Studio
# umake ide visual-studio-code

# # 安装nodejs
# umake nodejs
# # 常用安装包
# npm install -g cnpm

# # install docker with the help of daocloud
# curl -sSL https://get.daocloud.io/docker | sh