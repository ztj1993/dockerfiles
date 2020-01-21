# docker-ztj1993-alpine-base

这是一个 alpine 容器，针对中国用户进行了优化。

## 相关链接
- [README](https://github.com/ztj1993/dockerfiles/blob/master/alpine-base/README.md)
- [GitHub](https://github.com/ztj1993/dockerfiles/tree/master/alpine-base)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)

## 使用教程

> 简单使用

```
docker run -ti --rm ztj1993/image:alpine-base
docker run -ti --rm ztj1993/image:alpine-base echo test
```

## 更新日志

> 2020-01-21

- 使用 alpine:3.11 版本
- 将镜像标签改为 alpine-base

> 2019-08-22

- 初始构建
- 使用 alpine:3.8 版本
- 将 mirror 替换为 aliyun 加速
