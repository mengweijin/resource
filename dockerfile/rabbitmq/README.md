# rabbitmq

#### Dockerfile介绍
  Dockerfile rabbitmq
  
  https://hub.docker.com/_/rabbitmq
  
  https://github.com/docker-library/rabbitmq
  
#### 创建容器
```
阿里镜像仓库：

docker run \
--name rabbitmq \
--hostname rabbithost \
-p 5672:5672 \
-p 15672:15672 \
-e RABBITMQ_DEFAULT_USER=admin \
-e RABBITMQ_DEFAULT_PASS=123456 \
--restart=always \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/rabbitmq:latest
```

You can access it by visiting http://container-ip:15672 in a browser

登录：不配置RABBITMQ_DEFAULT_USER和RABBITMQ_DEFAULT_PASS，默认访客帐号是：guest，密码：guest。

如果配置了，就是配置后的user和pass, 如上面：用户名：admin，密码：123456


#### 挂载数据卷
如需映射rabbitmq的数据文件 把容器内对应的文件，拷贝到宿主机，映射即可（如下）
/var/lib/rabbitmq/

