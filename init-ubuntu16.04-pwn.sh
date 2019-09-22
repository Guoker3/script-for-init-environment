#安装时镜像源手动输入http://mirrors.aliyun.com/ubuntu
#换清华源
sudo mv /etc/apt/sozurces.list /etc/apt/sources.list.bak
#
echo 'deb cdrom:[Ubuntu 16.04 LTS _Xenial Xerus_ - Release amd64 (20160420.1)]/ xenial main restricted' > /etc/apt/sources.list
echo 'deb-src http://archive.ubuntu.com/ubuntu xenial main restricted #Added by software-properties' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted multiverse universe #Added by software-properties' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted multiverse universe #Added by software-properties' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial universe' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-updates multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse #Added by software-properties' >> /etc/apt/sources.list
echo 'deb http://archive.canonical.com/ubuntu xenial partner' >> /etc/apt/sources.list
echo 'deb-src http://archive.canonical.com/ubuntu xenial partner' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted multiverse universe #Added by software-properties' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-security multiverse' >> /etc/apt/sources.list
#
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
#
#安装capstone
mkdir ~/git-misc-re/capstone
sudo git clone https://github.com/aquynh/capstone ~/git-misc-re/capstone
cd ~/git-misc-re/capstone
sudo make
sudo make install
#
#安装pwntools
cd ~
git clone https://github.com/Gallopsled/pwntools
cd ~/pwntools
sudo python setup.py install
#
# 安装ROPgadget
pip install -y ropgadget
#安装Ruby和one_gadget
sudo apt install -y ruby
sudo gem install one_gadget
#
#安装libc-database和libcsearcher
cd ~
git clone https://github.com/lieanu/libc-database.git
cd ~
git clone https://github.com/lieanu/LibcSearcher.git
cd ~/LibcSearcher
sudo python setup.py develop
#
#拷贝各种版本libc
cd ~
git clone https://github.com/matrix1001/welpwn.git
sudo cp -a ~/welpwn/PwnContext/libs ~
#
#安装gdb
#sudo apt-get -y install gdb 
#安装peda,gef,gdbinit
#sudo git clone https://github.com/longld/peda.git ~/git-misc-re/peda
#sudo echo "source ~/git-misc-re/peda/peda.py" >> ~/.gdbinit#此代码可用于切换不同脚本
#wget -q -O- https://github.com/hugsy/gef/raw/master/gef.sh | sh
#echo source ~/.gdbinit-gef.py >> ~/.gdbinit
#wget https://raw.githubusercontent.com/gdbinit/Gdbinit/master/gdbinit
#cp gbdinit ~/.gdbinit
#
#安装pwndbg
#cd ~/git-misc-re
#git clone https://github.com/pwndbg/pwndbg
#cd ~/git-misc-re/pwndbg
#sudo sh setup.sh
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
