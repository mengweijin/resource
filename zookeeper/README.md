# zookeeper
https://hub.docker.com/_/zookeeper

https://github.com/31z4/zookeeper-docker/blob/5a82d0b90d055f39d50e0a64ae2e00da15f9b8b1/3.5.5/Dockerfile
  
#### 创建容器
```
官方镜像仓库：

docker run \
--name zookeeper \
-p 2181:2181 \
--restart=always \
-d zookeeper:3.5
```

#### docker compose
docker-compose.yml
```
docker-compose -f docker-compose.yml up -d
```
Run docker stack deploy -c docker-compose.yml zookeeper (or docker-compose -f docker-compose.yml up) and wait for it to initialize completely. Ports 2181-2183 will be exposed.