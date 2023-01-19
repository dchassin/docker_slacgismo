FROM ubuntu:22.10
ENV container docker

VOLUME [ "/sys/fs/cgroup" ]
WORKDIR /tmp
RUN apt update
RUN apt-get install sudo 
RUN apt install git
ENV LC_ALL=C
ENV MAKEFLAGS="-j$(($(nproc)*3))" 
ENV PYTHONSETUPFLAGS="-j $(($(nproc)*3))"
EXPOSE 6266-6299/tcp

