echo ""
echo "#######################################################################"
echo "#                 SOME PREPARATION FOR SCRIPTS                        #"
echo "#######################################################################"
echo ""

echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "fixed time zone problem"
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true

echo "install some tools you may use"
sudo apt install jq
echo "install curl"
apt-get install curl -y