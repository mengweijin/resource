# dockerfile-zentao

#### Dockerfile介绍
  Dockerfile 禅道开源版 10.5
  
  DockerHub: https://hub.docker.com/r/mengweijin/zentao/

#### 创建容器
  docker run --name zentao -p 8081:80 --restart=always -d mengweijin/zentao:latest

访问：http://localhost:8081

登录：禅道默认管理员帐号是：admin，密码：123456

#### 挂载数据卷
如需映射zentao的数据文件 把容器内对应的文件，拷贝到宿主机，映射即可（如下）
/opt/zbox/

Linux一键安装参考：https://www.zentao.net/book/zentaopmshelp/90.html

禅道10.5.stable版本更新日志及下载：
https://www.zentao.net/download/80093.html