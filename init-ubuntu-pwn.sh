#换阿里源
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse' > /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse' >> /etc/apt/sources.list
#更新
sudo apt-get update
sudo apt-get -y upgrade
#安装vim
sudo apt-get -y install vim
#安装32位编译环境
sudo apt-get -y install  lib32ncurses5 lib32z1
#安装pip并换清华源
sudo apt -y install python-pip
mkdir ~/.pip 
echo '[global]' > ~/.pip/pip.conf
echo 'index-url = https://pypi.tuna.tsinghua.edu.cn/simple' >> ~/.pip/pip.conf
echo 'trusted-host = pypi.tuna.tsinghua.edu.cn' >> ~/.pip/pip.conf
#安装git
sudo apt -y install git
#建立操作文件夹
sudo mkdir ~/git-misc-re
#安装peda
sudo git clone https://github.com/longld/peda.git ~/git-misc-re/peda
sudo echo "source ~/git-misc-re/peda/peda.py" >> ~/.gdbinit
#安装capstone
mkdir ~/git-misc-re/capstone
sudo git clone https://github.com/aquynh/capstone ~/git-misc-re/capstone
cd ~/git-misc-re/capstone
sudo make
sudo make install
#安装pwntools环境
pip install setuptools
pip install unicorn
pip install psutil-5.6.2
pip install virtualenv
pip install bcrypt
pip install tox
pip install pyserial
pip install pynacl
#安装pwntools
mkdir ~/git-misc-re/pwntools
sudo git clone https://github.com/Gallopsled/pwntools ~/git-misc-re/pwntools
cd ~/git-misc-re/pwntools
sudo python setup.py install

