# confluence-server

#### Dockerfile介绍
  Dockerfile confluence-server
  
  https://hub.docker.com/r/atlassian/confluence-server
  
  https://bitbucket.org/atlassian-docker/docker-atlassian-confluence-server/src/master/
  
#### 创建容器
```
阿里镜像仓库(个性化)：

docker run \
--name confluence \
-p 8090:8090 \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/confluence:latest



官方镜像仓库：
docker run \
--name confluence \
-p 8090:8090 \
-p 8091:8091 \
-d atlassian/confluence-server:7
```

#### docker compose
docker-compose.yml

```
docker-compose -f docker-compose.yml up -d

删除container：docker-compose down 

注意数据库版本支持：https://confluence.atlassian.com/doc/supported-platforms-207488198.html#SupportedPlatforms-Databases
```

#### 访问
http://ip:8090

#### 挂载数据卷
把容器内对应的文件，拷贝到宿主机，映射即可（如下）:
-v /data/your-confluence-home:/var/atlassian/application-data/confluence 


Note: Due to licensing restrictions Confluence does not ship with a MySQL or Oracle JDBC drivers. To use these databases you will need to copy a suitable driver into the container and restart it. For example, to copy the MySQL driver into a container named "confluence", you would do the following:

```
docker cp mysql-connector-java.x.y.z.jar confluence:/opt/atlassian/confluence/lib
docker restart confluence
```

#### 程序启动
```
docker logs -f confluence

当日志文件中出现了”========= agent working =====”，证明破解程序已经加进去了
```


#### crack
```
根据服务器ID生成许可证关键字：
1. 复制服务器ID:{ServerID}
2. 在本地存放"atlassian-agent.jar"的目录下执行命令，生成许可证：
注：需替换邮箱（-m admin@admin.com(随意写)）、名称（-n my_name(随意写)）、访问地址（-o http://127.0.0.1随意写)）、服务器ID（-s {ServerID}）为你的信息

生成 jira 许可命令参照如下：
java -jar atlassian-agent.jar -p jira -d -m admin@admin.com -n my_name -o http://127.0.0.1 -s {ServerID}

生成 confluence 许可命令参照如下：
java -jar atlassian-agent.jar -p conf -d -m admin@admin.com -n my_name -o http://127.0.0.1 -s {ServerID}

如果上个页面中也选择了安装团队日程表，则可执行下面的命令获得授权码：
java -jar atlassian-agent.jar -p tc -m admin@admin.com -n my_name -o http://127.0.0.1 -s {ServerID}

如果上个页面中也选择了Confluence Questions表，则可执行下面的命令获得授权码：
java -jar atlassian-agent.jar -p questions -m admin@admin.com -n my_name -o http://127.0.0.1 -s {ServerID}

插件破解方法同上，只是 -p 的值修改为插件的关键词。如：com.mxgraph.confluence.plugins.diagramly
java -jar atlassian-agent.jar -p com.mxgraph.confluence.plugins.diagramly -m admin@admin.com -n my_name -o http://127.0.0.1 -s {ServerID}
```