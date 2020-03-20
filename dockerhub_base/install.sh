#!/bin/bash

# Install needed system tools
yum -q update -y
yum -q clean all
yum -q groupinstall "Development Tools" -y
yum -q install cmake -y 
yum -q install ncurses-devel -y
yum -q install epel-release -y
yum -q install curl-devel -y
yum -q install which -y
yum -q install svn -y

# python3 support needed as of 4.2
yum -q install python3 python36-devel python3-pip python3-tkinter -y
ln -L /usr/local/bin/python3 || ln -sf /usr/bin/python3 /usr/local/bin/python3
pip3 --quiet install --upgrade pip
echo '#/bin/bash' > /usr/local/bin/python3-config
echo '/usr/bin/python3-config $*' >> /usr/local/bin/python3-config
chmod +x /usr/local/bin/python3-config
/usr/local/bin/python3 -m pip --quiet install matplotlib pandas mysql-connector Pillow
