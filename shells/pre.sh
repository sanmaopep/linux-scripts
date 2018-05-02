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
echo "Install V2ray"
sudo su
bash <(curl -L -s https://install.direct/go.sh)

echo "Config PAC for V2ray"
echo "Visit http://blog.csdn.net/hanshileiai/article/details/52624303"
