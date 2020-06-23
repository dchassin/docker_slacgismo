# Install needed system tools
yum clean all
yum groupinstall "Development Tools" -y
yum install cmake -y 
yum install ncurses-devel -y
yum install epel-release -y
yum install curl-devel -y
yum install which -y
yum install svn -y

yum install xz-devel bzip2-devel zlib-devel -y
yum install openssl-devel -y

cd /usr/local/src
curl https://www.python.org/ftp/python/3.7.7/Python-3.7.7.tgz > Python-3.7.7.tgz
tar xzf Python-3.7.7.tgz
cd Python-3.7.7
./configure --enable-optimizations --enable-shared
make altinstall
/sbin/ldconfig /usr/local/lib
ln -sf /usr/local/bin/python3.7 /usr/local/bin/python3
ln -f /usr/local/bin/python3.7m-config /usr/local/bin/python3-config
ln -s /usr/local/bin/pyvenv-3.7 /usr/local/bin/pyvenv
/usr/local/bin/python3 -m pip install matplotlib Pillow pandas numpy
cd /usr/local/src
rm -f Python-3.7.7.tgz
