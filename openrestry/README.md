# openrestry
openrestry 1.15.8.1-1.el7

#### Dockerfile介绍
  openrestry 1.15.8.1-1.el7
  
  更新Dockerfile时，从这里下载最新版：
  https://github.com/openresty/docker-openresty 
  
#### 创建容器
```
docker run \
--name openrestry \
-p 80:80 
--restart=always 
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/openrestry:latest
```
	
#### 访问 nginx
	http://localhost:80
