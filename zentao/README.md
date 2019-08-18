# dockerfile-zentao

#### Dockerfile介绍
  Dockerfile 禅道开源版 11.6.stable Linux一键安装包64位（适用于Ubuntu17+，centos7.4+）
  
#### 创建容器
```
阿里镜像仓库：

docker run \
--name zentao \
-p 8081:80 \
--restart=always \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/zentao:latest
```

访问：http://localhost:8081

登录：禅道默认管理员帐号是：admin，密码：123456

#### 挂载数据卷
如需映射zentao的数据文件 把容器内对应的文件，拷贝到宿主机，映射即可（如下）
/opt/zbox/

Linux一键安装参考：https://www.zentao.net/book/zentaopmshelp/90.html

禅道11.6.stable版本更新日志及下载：https://www.zentao.net/download/80153.html