# dockerfiles
  docker 自定义镜像

#### 1、dockerfile-jenkins
    jenkins maven(3.5.4) git subversion findbugs checkstyle pmd

Docker Hub: https://hub.docker.com/r/mengweijin/jenkins/

	docker run --name jenkins -p 8082:8080 --restart=always -d mengweijin/jenkins:latest

#### 2、dockerfile-mysql
  mysql 8.0 镜像
  
  DockerHub: https://hub.docker.com/r/mengweijin/mysql/

```
docker run \
--name mysql \
-p 3306:3306 \
--restart=always \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_DATABASE=app_master \
-e MYSQL_USER=appmaster \
-e MYSQL_PASSWORD=appmaster \
-v /var/lib/mysql/:/var/lib/mysql/ \
-d mengweijin/mysql:latest
```

#### 3、dockerfile-tomcat
  tomcat8.5 jre8 修改镜像时区为东八区时区，上海

  Docker Hub: https://hub.docker.com/r/mengweijin/tomcat/
```
docker run \
--name tomcat \
-p 8080:8080 \
--restart=always \
-v /opt/tomcat/your.war:/usr/local/tomcat/webapps/your.war \
-d mengweijin/tomcat:latest
```

#### 4、dockerfile-zentao
  Dockerfile 禅道开源版 10.5
  
  DockerHub: https://hub.docker.com/r/mengweijin/zentao/
  
    docker run --name zentao -p 8081:80 --restart=always -d mengweijin/zentao:latest

  访问：http://localhost:8081

  登录：禅道默认管理员帐号是：admin，密码：123456

	
	
