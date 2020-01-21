# Ztj1993 Docker 镜像

这是我优化了一些 docker 镜像，主要用于开发和针对国内用户的快速构建。

## 相关链接
- [GitHub](https://github.com/ztj1993/dockerfiles)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)

## 应用范例

### php-composer
```
docker run -it --rm -v $PWD:/app ztj1993/image:php-composer /bin/sh
docker run -it --rm -v $PWD:/app ztj1993/image:php-composer /bin/bash
docker run -it --rm -v $PWD:/app ztj1993/image:php-composer init
```

### tool-svn
```
docker run -it --rm -v $PWD:/svn ztj1993/image:svn --version
```
