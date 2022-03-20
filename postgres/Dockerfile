# 基础镜像
FROM postgres:14
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai

# 安装。设置镜像时区为东八区时区，上海
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 放在这个目录下的所以.sh和.sql文件都会被初始化执行
COPY docker-entrypoint-initdb.d/init.sql /docker-entrypoint-initdb.d/
