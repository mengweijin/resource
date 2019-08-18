# mysql

#### Dockerfile介绍
  mysql 8.0 镜像 时区：上海 东八区时区；编码：utf8mb4

#### 创建容器
```
docker run \
--name mysql \
-p 3306:3306 \
--restart=always \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_DATABASE=app_master \
-e MYSQL_USER=appmaster \
-e MYSQL_PASSWORD=appmaster \
-v /var/lib/mysql/:/var/lib/mysql/ \
-d registry.cn-hangzhou.aliyuncs.com/mengweijin/mysql:latest
```
  
#### 参数说明
-e MYSQL_ROOT_PASSWORD=root：指定 root 用户的密码为 root

-v /var/lib/mysql/:/var/lib/mysql/：挂载卷/var/lib/mysql/

#### 可选参数
-e MYSQL_DATABASE=myboot_master \：创建一个名为 app_master 的数据库

-e MYSQL_USER=myboot \：指定 app_master  appmaster ，该用户对当前数据库拥有所有权限

-e MYSQL_PASSWORD=myboot \：指定 app_master 数据库的 appmaster 用户的密码为 appmaster

#### 创建数据库、用户并授权
```
创建数据库：
mysql> create database test_database;

创建用户（joe）：
mysql> CREATE USER 'joe'@'%' IDENTIFIED BY '123456';
或者只能本地主机登录方式创建：
mysql> CREATE USER 'joe'@'localhost' IDENTIFIED BY '123456';

授权：
mysql> grant all privileges on test_database.* to 'joe'@'localhost' identified by '123456';

刷新权限：
mysql> flush privileges;
```

#### 编码说明：当前镜像使用utf8mb4编码

#### 注意：当前镜像修改了默认身份验证插件为 mysql_native_password 以兼容客户端工具的连接。

mysql5.8开始将caching_sha2_password作为默认的身份验证插件。该caching_sha2_password和 sha256_password认证插件提供比mysql_native_password插件更安全的密码加密，并 caching_sha2_password提供了比更好的性能sha256_password。由于这些优越的安全性和性能特性，caching_sha2_password它是MySQL 8.0首选的身份验证插件，而且也是默认的身份验证插件而不是 mysql_native_password。此更改会影响服务器和libmysqlclient 客户端库；目前来说和经常使用的客户端软件兼容性不好。

在MySQL 5.7中，默认的身份验证插件是 mysql_native_password！

即，mysql5.8版本及以后的版本中，由于navicat等客户端工具只支持mysql_native_password验证插件，不支持caching_sha2_password验证插件，当使用navicat等客户端工具无法连接mysql5.8版本及以后的版本，为了解决这个问题：

（1）配置/etc/mysql/conf.d/mysql.cnf，这将放弃提供的改进的身份验证安全性 caching_sha2_password
```
[mysqld]
    default_authentication_plugin=mysql_native_password
```
（2）也可以修改用户的方式解决，如：

 ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';

