# 基础镜像
FROM centos:7
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

USER root

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai

# 设置镜像时区为东八区时区，上海
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    yum -y install wget && \
    wget -c http://mirrors.kernel.org/fedora-epel/epel-release-latest-7.noarch.rpm && \
    rpm -ivh epel-release-latest-7.noarch.rpm && \
    yum -y update && \
    # 安装中文支持
    yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common && \
    # 配置显示中文
    localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 && \
    # 安装7z工具
    yum -y install p7zip* && \
    # 安装tesseract OCR
    yum -y install tesseract.x86_64 && \
    yum -y install tesseract-devel.x86_64 tesseract-osd.x86_64 && \
    # 安装语言包。中文包：chi_sim；英文/数字包：eng；方向和脚本检测包：osd
    yum -y install tesseract-langpack-chi_sim.noarch && \
    # 安装open jre
    yum -y install java-1.8.0-openjdk && \
    # 安装open jdk
    yum -y install java-1.8.0-openjdk-devel && \
    # 清理安装数据
    yum clean all && \
    # 清理安装临时目录数据
    rm -rf /tmp/*

# 设置环境变量为中文环境
ENV LC_ALL zh_CN.utf8

#ARG JAR_FILE=myboot-admin.jar

# 将宿主机的${JAR_NAME}拷贝到容器的/opt/jar/目录下
# /opt/jar/必须带有后边的"/"（目录），如果是/opt/jar这样的话，容器会创建一个jar文件而非目录
# COPY ${JAR_FILE} /opt/jar/

# springboot内嵌tomcat默认工作目录在/tmp
VOLUME /tmp

EXPOSE 80

# ENTRYPOINT中不能使用${JAR_FILE}方式取变量参数，否则命令无法识别
ENTRYPOINT java -jar /opt/app.jar

# docker build -t mengweijin/centos:latest .
# docker run --name centos -p 8080:80 --link mysql:mysql -v /opt/myApp-1.0.jar:/opt/app.jar --restart=always -d mengweijin/centos-springboot:latest