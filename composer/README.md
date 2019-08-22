# docker-ztj1993-composer

这是一个 composer 容器，针对中国用户进行了优化。

## 相关链接
- [README](https://github.com/ztj1993/dockerfiles/blob/master/composer/README.md)
- [GitHub](https://github.com/ztj1993/dockerfiles/tree/master/composer)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)
- [Reference](https://hub.docker.com/_/composer)

## 使用教程
- 参考：https://hub.docker.com/_/composer

> 简单使用

```
docker run -it --rm -v $PWD:/app ztj1993/image:composer /bin/sh
docker run -it --rm -v $PWD:/app ztj1993/image:composer /bin/bash
docker run -it --rm -v $PWD:/app ztj1993/image:composer init
```

## 更新日志

> 2019-08-22

- 初始构建
- 使用 composer 基础镜像
- 将 packagist 替换为 aliyun 加速
