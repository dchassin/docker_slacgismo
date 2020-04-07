FROM centos:8 
ENV container docker

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
RUN yum update -y 
RUN yum install git -y
COPY dockerhub_base/install.sh /tmp/
RUN chmod +wx *.sh
RUN bash install.sh
EXPOSE 6266-6299/tcp

