# openrestry
openrestry 1.15.8.1-1.el7

#### Dockerfile介绍
  openrestry 1.15.8.1-1.el7
  
  更新Dockerfile时，从这里下载最新版Dockerfile、nginx.conf和nginx.vh.default.conf：
  https://github.com/openresty/docker-openresty 
  
#### 创建容器
```
docker run \
--name openrestry \
-p 80:80 \
--restart=always \
-v /etc/nginx/conf.d/:/etc/nginx/conf.d/ \
-v /etc/nginx/logs/:/usr/local/openresty/nginx/logs/ \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/openrestry:latest
```
	
#### 访问 nginx
	http://localhost:80
