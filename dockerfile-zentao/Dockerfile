# 基础镜像
FROM centos:7
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

ARG ZENTAO_NAME=zbox.tar.gz

# Linux 64位 一键安装包
# ARG ZENTAO_URL=https://nchc.dl.sourceforge.net/project/zentao/10.4/ZenTaoPMS.10.4.stable.zbox_64.tar.gz
ARG ZENTAO_URL=https://jaist.dl.sourceforge.net/project/zentao/10.5/ZenTaoPMS.10.5.stable.zbox_64.tar.gz

USER root
# 安装
RUN yum -y install wget && \
    # 下载禅道一键安装包到当前目录
    wget -O ${ZENTAO_NAME} ${ZENTAO_URL} && \
    # 解压
    tar -zxvf ${ZENTAO_NAME} -C /opt && \
    # 删除压缩包
    rm -f ${ZENTAO_NAME}

# 环境变量
ENV PATH /opt/zbox:$PATH

# 添加挂载点	
VOLUME /opt/zbox

# apache服务器默认端口为80
EXPOSE 80

# tail -f /dev/null作用：必须存在一个一直运行的前台程序，否则容器启动后会自动停止
ENTRYPOINT zbox start && tail -f /dev/null
