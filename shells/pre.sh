echo ""
echo "#######################################################################"
echo "#                 SOME PREPARATION FOR SCRIPTS                        #"
echo "#######################################################################"
echo ""

echo "fixed time zone problem"
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true


echo "install some tools you may use"
sudo apt install jq