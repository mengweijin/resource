# zookeeper

官方Dockerfile Github: https://github.com/31z4/zookeeper-docker
  
#### 创建容器
```
官方镜像仓库：

docker run \
--name zookeeper \
-p 2181:2181 \
--restart=always \
-d zookeeper:latest
```

#### docker compose
docker-compose.yml
```
docker-compose -f docker-compose.yml up -d
```
Run docker stack deploy -c docker-compose.yml zookeeper (or docker-compose -f docker-compose.yml up) and wait for it to initialize completely. Ports 2181-2183 will be exposed.