# postgres

#### Dockerfile介绍
  Dockerfile postgres
  
  https://hub.docker.com/_/postgres
  
  https://github.com/docker-library/postgres
  
#### 创建容器
```
阿里镜像仓库：

docker run \
--name postgres \
--restart=always \
-p 5432:5432 \
-e POSTGRES_DB=postgres \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=postgres \
-v /var/lib/postgresql/data:/var/lib/postgresql/data \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/postgres:latest
```
POSTGRES_DB: This optional environment variable can be used to define a different name for the default database that is created when the image is first started. If it is not specified, then the value of 'POSTGRES_USER' will be used.

POSTGRES_USER: The default superuser, If it is not specified, then the default user of "postgres" will be used.

POSTGRES_PASSWORD: The superuser password

#### 挂载数据卷
把容器内对应的文件，拷贝到宿主机，映射即可（如下）:
/var/lib/postgresql/data


Note: On a side note, do not use restart: always for your data container as this container does not run any service (just the true command). Doing this you are basically telling Docker to run the true command in an infinite loop.
