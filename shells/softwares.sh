echo ""
echo "#######################################################################"
echo "#                        INSTALL SOFTWARE                             #"
echo "#######################################################################"
echo ""

# 常用软件下载地址
# TODO google不知道能不能翻墙
chromeVersion="latest stable edition"
chromeLink="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sougouVersion="2.2.0"
sougouLink="http://cdn2.ime.sogou.com/dl/index/1509619794/sogoupinyin_2.2.0.0102_amd64.deb"
netMusicVersion="1.1.0"
netMusicLink="http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb"

mkdir ../tmp
cd ../tmp/

echo "#######################################################################"
echo "downloading google chrome version ${chromeVersion}"
chromeName="chrome.deb"
sudo wget -O ${chromeName} -c ${chromeLink}
sudo dpkg -i ${chromeName}
sudo apt-get -yf install
sudo dpkg -i ${chromeName}

echo "#######################################################################"
echo "downloading sougoupinyin version ${sougouVersion}"
sougouName="sougou.deb"
sudo wget -O ${sougouName} -c ${sougouLink}
sudo dpkg -i ${sougouName}
sudo apt-get -yf install
sudo dpkg -i ${sougouName}

echo "#######################################################################"
echo "downloading netMusic version ${netMusicVersion}"
netMusicName="netMusic.deb"
sudo wget -O ${netMusicName} -c ${netMusicLink}
sudo dpkg -i ${netMusicName}
sudo apt-get -yf install
sudo dpkg -i ${netMusicName}

echo "#######################################################################"
echo "install markdown editor Typora"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get update

# install typora
sudo apt-get install typor


echo "#######################################################################"
echo "TODO scripts 用linux mint 吧，大部分软件不用装！"
echo "mint driver 驱动管理s"
echo "Startup Application 启动项管理"
echo "pinta 画图"
echo "GIMP PS"
