# 基础镜像
# 不带web访问插件
# FROM rabbitmq:3.7
# 带web访问插件
FROM rabbitmq:3.7-management
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai

# 安装。设置镜像时区为东八区时区，上海
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


