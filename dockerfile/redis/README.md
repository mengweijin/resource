# redis

#### Dockerfile介绍
https://hub.docker.com/_/redis/

https://zhuanlan.zhihu.com/p/62957397
  
#### 创建容器
```
docker run --name redis -p 6379:6379 -d redis:latest

docker run --name redis -p 6379:6379 -d redis:latest --requirepass "密码"
docker run --name redis --restart=always -p 6379:6379 -d redis:latest --requirepass 123456
```
  
#### 连接、查看redis容器
```
docker exec -it redis redis-cli 
docker exec -it redis redis-cli -h 127.0.0.1 -p 6379 -a 123456

docker exec -it “容器ID” redis-cli 
docker exec -it “容器ID” redis-cli -h “内网” –a “redis密码”

docker exec -it 34aee08bf67d redis-cli
docker exec -it 34aee08bf67d redis-cli -h 127.0.0.1 -p 6379 -a 123456
```

#### Redis (error) NOAUTH Authentication required.解决方法
```
auth 密码

set hello jack
get hello
```