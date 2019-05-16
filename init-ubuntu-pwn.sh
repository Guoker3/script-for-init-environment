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
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ bvionic-proposed main restricted universe multiverse' >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install vim

sudo apt-get -y install  lib32ncurses5 lib32z1
sudo apt -y install python-pip

sudo apt -y install git

sudo git clone https://github.com/longld/peda.git ~/peda
sudo echo "source ~/peda/peda.py" >> ~/.gdbinit

cd /
sudo mkdir git-misc-re

cd /git-misc-re
sudo git clone https://github.com/aquynh/capstone
cd /git-miscre/capstone
sudo make
sudo make install
pip install setuptools

cd /git-misc-re
sudo git clone https://github.com/Gallopsled/pwntools
cd /git-misc-re/pwntools
sudo python setup.py install

