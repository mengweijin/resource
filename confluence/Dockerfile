# 基础镜像
FROM atlassian/confluence-server:6.13.0
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

# 设置镜像时区为东八区时区，上海
ENV TZ=Asia/Shanghai

# 将代理破解包加入容器(理论上可以破解所有atlassian产品)
COPY crack/atlassian-agent.jar /opt/atlassian/

# 安装。设置镜像时区为东八区时区，上海
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # 设置启动加载代理包
    echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh
