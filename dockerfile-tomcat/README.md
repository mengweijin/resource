# dockerfile-tomcat
tomcat8.5 jre8 修改镜像时区为东八区时区，上海

Docker Hub: https://hub.docker.com/r/mengweijin/tomcat/

#### 创建容器
```
docker run \
--name tomcat \
-p 8080:8080 \
--restart=always \
-v /opt/tomcat/your.war:/usr/local/tomcat/webapps/your.war \
-d mengweijin/tomcat:latest
```

#### 参数说明
    -v /opt/tomcat/your.war:/usr/local/tomcat/webapps/your.war 挂载本地/opt/tomcat/your.war文件，其中your.war名称需要根据实际情况处理

#### 访问tomcat
	http://localhost:8080/${war包名}
	
	
