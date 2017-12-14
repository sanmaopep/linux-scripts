echo ""
echo "#######################################################################"
echo "#                     INSTALL DEVELOPER TOOLS                         #"
echo "#######################################################################"
echo ""

sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make

# 安装Eclipse
umake ide eclipse   # 基础Java版

# 安装Android的开发环境
umake android android-sdk   # SDK
umake android android-ndk   # NDK
umake android android-studio # Android Studio这个IDE

# 安装Visual Studio
umake ide visual-studio-code

# 安装nodejs
umake nodejs
# 常用安装包
npm install -g cnpm

# install docker with the help of daocloud
curl -sSL https://get.daocloud.io/docker | sh