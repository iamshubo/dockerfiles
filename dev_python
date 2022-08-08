FROM ubuntu:22.04
ENV LANG C.UTF-8
ENV NODE_MIRROR https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/
RUN set -eux; \
    sed -i 's/https/http/g' /etc/apt/sources.list; \
    sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    apt update -y; \
    apt upgrade -y; \
    bash; \
    apt install curl -y; \
    #apt install nodejs npm -y; \
    #npm -g install n; \
    #echo "export NODE_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/" >> /root/.bashrc; \
    #n stable; \
    #apt install openjdk-11-jdk  -y; \
    apt install python3 -y; \
    apt install python3-pip -y; \
    python3 -m pip install --upgrade pip; \
    pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple; \
    pip3 install --no-cache-dir fastapi; \
    pip3 install --no-cache-dir sqlalchemy; \
    pip3 install --no-cache-dir pymysql; \
    pip3 install --no-cache-dir uvicorn; \
    pip3 install --no-cache-dir autopep8; \
    pip3 install --no-cache-dir pyquery; \
    mkdir /root/projects; \
    apt install git -y; \
    apt autoremove -y; \
    ln /usr/bin/python3 /usr/bin/python; \
