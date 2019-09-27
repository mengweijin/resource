# sonarqube

Dockerfile Github: https://github.com/SonarSource/docker-sonarqube

Docker Hub: https://hub.docker.com/_/sonarqube

中文插件（注意版本对应）：https://github.com/SonarQubeCommunity/sonar-l10n-zh
#### docker
```
内嵌数据库方式（此方式不支持数据迁移，一般使用外面的数据库）：
$ docker run -d --name sonarqube -p 9000:9000 sonarqube

单独提供数据库：
$ docker run \
    --name sonarqube \
    -p 9000:9000 \
    -e sonar.jdbc.username=sonar \
    -e sonar.jdbc.password=sonar \
    -e sonar.jdbc.url=jdbc:postgresql://localhost/sonar \
    -d registry.cn-hangzhou.aliyuncs.com/mengweijin/sonarqube:latest
    
    
By default you can login as admin with password admin.
```

Use of the environment variables SONARQUBE_JDBC_USERNAME, SONARQUBE_JDBC_PASSWORD and SONARQUBE_JDBC_URL is deprecated, and will stop working in future releases.

#### docker compose
docker-compose.yml

```
docker-compose -f docker-compose.yml up -d

删除container：docker-compose down 
```

Run docker-compose -f docker-compose.yml up and wait for it to initialize completely. Port 9000 will be exposed.

注：新版本不支持mysql, 推荐使用postgres

#### Requirements
Because SonarQube uses an embedded Elasticsearch, make sure that the Docker host configuration complies with the Elasticsearch production mode requirements and File Descriptors configuration.

For example, on Linux, you can set the recommended values for the current session by running the following commands as root on the host:

sysctl -w vm.max_map_count=262144
sysctl -w fs.file-max=65536
ulimit -n 65536
ulimit -u 4096