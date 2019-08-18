FROM nginx

# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

# Hosting some simple static content
COPY static-html /usr/share/nginx/html

# This can also be accomplished more cleanly using a simple Dockerfile (in /host/path/):
# COPY nginx.conf /etc/nginx/nginx.conf

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 设置环境变量为中文环境
ENV LC_ALL zh_CN.utf8