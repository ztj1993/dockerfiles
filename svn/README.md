# docker-ztj1993-svn

这是一个 svn 容器，用户执行 svn 命令。

## 相关链接
- [README](https://github.com/ztj1993/dockerfiles/blob/master/svn/README.md)
- [GitHub](https://github.com/ztj1993/dockerfiles/tree/master/svn)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)

## 使用教程

> 简单使用

```
docker run -it --rm -v $PWD:/svn ztj1993/image:svn --version
```

## 更新日志

> 2019-08-22

- 初始构建
- 使用 ztj1993/image:alpine 基础镜像
- 安装了 subversion
