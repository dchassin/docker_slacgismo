# Install needed system tools
yum clean all
yum groupinstall "Development Tools" -y
yum install cmake -y 
yum install ncurses-devel -y
yum install epel-release -y
yum install curl-devel -y
yum install which -y
yum install svn -y

# python3 support needed as of 4.2
yum install python3 python36-devel python3-tkinter -y
ln -sf /usr/bin/python3 /usr/local/bin/python3
echo '#/bin/bash' > /usr/local/bin/python3-config
echo '/usr/bin/python3-config $*' >> /usr/local/bin/python3-config
chmod +x /usr/local/bin/python3-config
python3 -m pip --quiet install matplotlib pandas mysql-connector Pillow
