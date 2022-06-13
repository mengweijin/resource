# nginx
nginx 修改镜像时区为东八区时区，上海

设置环境变量为中文环境(否则可能中文乱码) ENV LC_ALL zh_CN.utf8

#### 创建容器
```bash
# 或者使用下面两个 -e 参数来防止中文乱码
docker run \
--name nginx \
-p 8083:80 \
-e LANG=C.UTF-8 \
-e LC_ALL=C.UTF-8 \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/nginx:latest
```

#### 在主机 /app 目录下创建挂载目录
```bash
mkdir -p /app/nginx/{conf.d,html,logs} 
```

#### 将容器内的配置文件和文件夹复制到宿主机
```bash
##导入的配置文件目录
##默认的配置文件
##html页面所放的位置
##日志文件
docker cp nginx:/etc/nginx/conf.d/ /app/nginx/
docker cp nginx:/etc/nginx/nginx.conf /app/nginx/nginx.conf
docker cp nginx:/usr/share/nginx/html/ /app/nginx/
docker cp nginx:/var/log/nginx /app/nginx/log
```

```bash
docker run \
--name nginx \
-p 8083:80 \
--restart=always \
-v /app/nginx/conf.d/:/etc/nginx/conf.d/ \
-v /app/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v /app/nginx/html/:/usr/share/nginx/html/ \
-v /app/nginx/log/:/var/log/nginx/ \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/nginx:latest
```

#### 官方镜像
https://hub.docker.com/_/nginx

https://github.com/nginxinc/docker-nginx/blob/e3bbc1131a683dabf868268e62b9d3fbd250191b/mainline/buster/Dockerfile