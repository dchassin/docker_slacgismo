FROM centos:8 
ENV container docker

RUN yum update -y 
RUN yum install git -y

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
RUN yum update -y 
RUN yum install git -y
COPY install.sh /tmp/
RUN chmod +wx *.sh
RUN bash install.sh

