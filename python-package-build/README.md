# docker-ztj1993-python-package-build

这是一个 python 包构建容器，用于发布包。

## 相关链接
- [README](https://github.com/ztj1993/dockerfiles/blob/master/python-package-build/README.md)
- [GitHub](https://github.com/ztj1993/dockerfiles/tree/master/python-package-build)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)

## 环境变量
- 测试发布：`TEST_ENABLE=false`
- 测试地址：`TEST_URL=https://test.pypi.org/legacy/`
- 测试用户：`TEST_USERNAME=not_set`
- 测试密码：`TEST_PASSWORD=not_set`
- 正式发布：`PYPI_ENABLE=false`
- 发布用户：`PYPI_USERNAME=not_set`
- 发布密码：`PYPI_PASSWORD=not_set`

## 使用教程
```
echo "
TEST_USERNAME=not_set
TEST_PASSWORD=not_set
PYPI_USERNAME=not_set
PYPI_PASSWORD=not_set
" | tee ~/python-package-build.env

docker run -it --rm -v $PWD:/app \
    -e TEST_ENABLE=true \
    -e PYPI_ENABLE=true \
    --env-file ~/python-package-build.env \
    ztj1993/image:python-package-build
```

## 更新日志

> 2019-09-03

- 初始构建
- 使用 python:3.7-alpine 基础镜像
