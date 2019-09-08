# 基础镜像
FROM sonarqube:7.9-community
# 维护者信息
MAINTAINER Meng Wei Jin mengweijin.work@foxmail.com

# 其它第三方插件安装
#   1、下载插件的 jar 文件
#   2、自制镜像，将 jar 文件复制到 /opt/sonarqube/extensions/plugins/ 目录
#   3、启动新的镜像，插件即可生效
COPY sonar-l10n-zh-plugin-1.29.jar /opt/sonarqube/extensions/plugins/
