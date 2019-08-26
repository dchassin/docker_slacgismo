FROM circleci/buildpack-deps:xenial
ENV container docker

RUN sudo apt-get install software-properties-common python-software-properties --yes
RUN sudo add-apt-repository -y ppa:deadsnakes/ppa
RUN sudo apt update
RUN sudo apt install -y python3.7
RUN sudo apt-get -y install python3-dev
RUN sudo apt-get -y install python3-pip
RUN sudo python3.7 -m pip install pandas
RUN sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
RUN sudo update-alternatives --set python /usr/bin/python3.7
RUN sudo apt-get -y install python3-pip
RUN sudo python3.7 -m pip install matplotlib
RUN sudo rm -f /usr/bin/python3
RUN sudo ln -s /etc/alternatives/python /usr/bin/python3