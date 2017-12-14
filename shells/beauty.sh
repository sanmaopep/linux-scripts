echo ""
echo "#######################################################################"
echo "#                          BEAUTIFY UBUNTU                            #"
echo "#######################################################################"
echo ""

#install gnome desktop
echo "install gnome shell and tweak tool"
sudo apt-get install gnome-session -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install gnome-shell-extensions

# install gnome arc theme
echo "install gnome arc theme"
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update -y
sudo apt-get install arc-theme -y

# install gnome flat remix icon

echo "install gnome flat remix icon"
sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update -y
sudo apt-get install flat-remix-icons -y

# install dash to dock
echo "install dash to dock plug in"
cd ~/Downloads
git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock
make 
make install