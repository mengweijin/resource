# qbittorrent

#### Dockerfile介绍

[https://hub.docker.com/r/linuxserver/qbittorrent](https://hub.docker.com/r/linuxserver/qbittorrent)

[https://github.com/linuxserver/docker-qbittorrent](https://github.com/linuxserver/docker-qbittorrent)
  
#### 创建容器（原始镜像）
```bash
docker run -d \
  --name=qbittorrent \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e WEBUI_PORT=8080 \
  -p 6881:6881 \
  -p 6881:6881/udp \
  -p 8080:8080 \
  -v /app/qbittorrent/config:/config \
  -v /app/qbittorrent/downloads:/downloads \
  --restart unless-stopped \
  linuxserver/qbittorrent:latest

```
登录：http://localhost:8080  

admin/adminadmin

The webui is at <your-ip>:8080 and the default username/password is admin/adminadmin.

Change username/password via the webui in the webui section of settings.

由于从 lscr.io/linuxserver/qbittorrent 拉取镜像太慢了，所以自己弄了一个 aliyun 镜像
```bash
docker run -d \
  --name=qbittorrent \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e WEBUI_PORT=7000 \
  -p 6881:6881 \
  -p 6881:6881/udp \
  -p 7000:7000 \
  -v /app/qbittorrent/config:/config \
  -v /app/qbittorrent/downloads:/downloads \
  registry.cn-hangzhou.aliyuncs.com/mengweijin/qbittorrent:latest
```
