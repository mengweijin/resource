# springboot
spring boot应用容器镜像 centos7 openJDK8 7z 

#### Dockerfile介绍
  spring boot应用容器镜像 centos7 openJDK8 7z 
  
#### 创建容器
```
docker run \
--name springboot \
-p 8080:80 
--link mysql:mysql 
-v /opt/myApp-1.0.jar:/opt/app.jar 
--restart=always 
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/springboot:latest
```

#### 挂载数据卷说明
任意本地主机目录下的springboot应用jar包挂载到容器的/opt/app.jar位置，一般只在开发环境方便部署时，才挂载本地卷。
	
#### 访问应用
	http://localhost:8080
