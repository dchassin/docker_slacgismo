FROM centos:8 
ENV container docker

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
RUN yum update -y 
RUN yum install git -y
COPY ./install.sh /tmp/
RUN chmod +wx *.sh
RUN bash install.sh
ENV LC_ALL=C
ENV MAKEFLAGS="-j$(($(nproc)*3))" 
ENV PYTHONSETUPFLAGS="-j $(($(nproc)*3))"
EXPOSE 6266-6299/tcp

