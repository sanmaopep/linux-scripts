echo ""
echo "#######################################################################"
echo "#                 SOME PREPARATION FOR SCRIPTS                        #"
echo "#######################################################################"
echo ""

mkdir ../tmp

echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "fixed time zone problem"
sudo apt-get install ntpdate -y
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc

echo "install some tools you may use"
sudo apt-get install jq -y
echo "install curl"
sudo apt-get install curl -y

echo "#######################################################################"
echo "Install shadowsocks"
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
sudo apt-get update -y
sudo apt-get install shadowsocks-qt5 -yf
sudo apt-get -yf install
sudo apt-get install shadowsocks-qt5 -yf

echo "Config PAC for shadowsocks"
echo "Visit http://blog.csdn.net/hanshileiai/article/details/52624303"