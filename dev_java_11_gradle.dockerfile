FROM ubuntu:22.04
ENV LANG C.UTF-8
RUN set -eux; \
    sed -i 's/https/http/g' /etc/apt/sources.list; \
    sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list; \
    apt update -y; \
    apt upgrade -y; \
    mkdir /root/projects; \
    apt install git openjdk-11-jdk maven -y; \
    apt install wget unzip -y; \
    echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/' >> /root/.bashrc; \
    echo 'export GRADLE_USER_HOME=/root/.gradle' >> /root/.bashrc; \
    echo 'export GRADLE_HOME=/usr/share/gradle-7.5.1' >> /root/.bashrc; \
    cd /usr/share; \
    wget https://services.gradle.org/distributions/gradle-7.5.1-bin.zip; \
    unzip gradle-7.5.1-bin.zip; \
    rm gradle-7.5.1-bin.zip; \
    ln -s /usr/share/gradle-7.5.1/bin/gradle /usr/bin/gradle; \
    apt autoremove -y;
COPY settings.xml /root/.m2/settings.xml
COPY init.gradle /root/.gradle/init.gradle