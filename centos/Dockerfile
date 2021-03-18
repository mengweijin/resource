# 基础镜像
FROM centos:7

USER root

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai

# 设置镜像时区为东八区时区，上海
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    yum -y update && \
    yum clean all && \
    yum -y install wget && \
    yum -y install vim && \
    # Apache Bench 压测工具
    yum -y install httpd-tools && \
    # 安装中文支持
    yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common && \
    # 配置显示中文
    localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 && \
    # 安装open jre
    yum -y install java-1.8.0-openjdk && \
    # 安装open jdk
    yum -y install java-1.8.0-openjdk-devel && \
    # 再次清理安装数据
    yum clean all && \
    # 清理安装临时目录数据
    rm -rf /tmp/*

# 设置环境变量为中文环境
ENV LC_ALL zh_CN.utf8

CMD /bin/bash

# docker build -t mengweijin/centos:latest .
# 只有下面这样启动（加上了 -i -t 参数），才不会启动之后立马退出。如果需要映射端口：-p 本地8080:容器8080
# docker run --name centos -d -i -t mengweijin/centos:latest

# 从宿主机复制文件到容器
# docker cp C:\aaa.jar centos:/home
