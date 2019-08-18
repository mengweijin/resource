# dockerfile-nginx
nginx 修改镜像时区为东八区时区，上海

Docker Hub: https://hub.docker.com/r/mengweijin/nginx/

#### 创建容器
```
docker run \
--name nginx \
-p 8083:80 \
--restart=always \
# Complex configuration
# -v /host/path/nginx.conf:/etc/nginx/nginx.conf:ro \
-d mengweijin/nginx:latest
```

#### 官方镜像Github
https://github.com/nginxinc/docker-nginx/blob/e3bbc1131a683dabf868268e62b9d3fbd250191b/mainline/buster/Dockerfile