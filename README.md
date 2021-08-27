# Ztj1993 Docker 镜像

## 说明

- Alpine 基础镜像版本：alpine:3.8, alpine:3.11
- Ubuntu 基础镜像版本：ubuntu:20.04

## 快速设置国内源

```
echo "http://mirrors.aliyun.com/alpine/v3.8/main" > /etc/apk/repositories
echo "http://mirrors.aliyun.com/alpine/v3.8/community" >> /etc/apk/repositories
```

```
echo "http://mirrors.aliyun.com/alpine/v3.11/main" > /etc/apk/repositories
echo "http://mirrors.aliyun.com/alpine/v3.11/community" >> /etc/apk/repositories
```
