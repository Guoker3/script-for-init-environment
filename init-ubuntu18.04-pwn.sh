#安装时镜像源手动输入http://mirrors.aliyun.com/ubuntu
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
#安装python 2/3
sudo apt-get -y install python
sudo apt-get -y install python3
#安装vim
sudo apt-get -y install vim
#安装32位编译环境
sudo apt-get -y install  lib32ncurses5 lib32z1
sudo apt-get -y install gcc-multilib
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

#安装capstone
mkdir ~/git-misc-re/capstone
sudo git clone https://github.com/aquynh/capstone ~/git-misc-re/capstone
cd ~/git-misc-re/capstone
sudo make
sudo make install

#安装pwntools
pip install pwntools


# 安装ROPgadget
pip install ropgadget

#安装libcsearcher
git clone https://github.com/lieanu/LibcSearcher.git
cd LibcSearcher
sudo python setup.py develop

#安装gdb
#sudo apt-get -y install gdb 
#安装peda,gef,gdbinit
#sudo git clone https://github.com/longld/peda.git ~/git-misc-re/peda
#sudo echo "source ~/git-misc-re/peda/peda.py" >> ~/.gdbinit#此代码可用于切换不同脚本
#wget -q -O- https://github.com/hugsy/gef/raw/master/gef.sh | sh
#echo source ~/.gdbinit-gef.py >> ~/.gdbinit
#wget https://raw.githubusercontent.com/gdbinit/Gdbinit/master/gdbinit
#cp gbdinit ~/.gdbinit

#无pip直接安装时安装pwntools环境
#pip install setuptools
#pip install unicorn
#pip install psutil-5.6.2
#pip install virtualenv
#pip install bcrypt
#pip install tox
#pip install pyserial
#pip install pynacl
#pip install capstone
#pip install MarkupSafe
#安装pwntools
#mkdir ~/git-misc-re/pwntools
#sudo git clone https://github.com/Gallopsled/pwntools ~/git-misc-re/pwntools
#cd ~/git-misc-re/pwntools
#sudo python setup.py install
#可能通过修改pwntools的setup.py更改安装源
