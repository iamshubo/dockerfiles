FROM ubuntu:22.04
ENV LANG C.UTF-8
ENV NODE_MIRROR https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/
RUN set -eux; \
    sed -i 's/https/http/g' /etc/apt/sources.list; \
    sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    apt update -y; \
    apt upgrade -y; \
    mkdir /root/projects; \
    apt install git -y; \
    apt autoremove -y; \
    

