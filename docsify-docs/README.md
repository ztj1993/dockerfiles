# docker-ztj1993-docsify-docs

这是一个 docsify 多文档容器，以目录结构初始化文档。

## 相关链接
- [README](https://github.com/ztj1993/dockerfiles/blob/master/docsify-docs/README.md)
- [GitHub](https://github.com/ztj1993/dockerfiles/tree/master/docsify-docs)
- [DockerHub](https://hub.docker.com/r/ztj1993/image)

## 项目说明

> 环境变量

- 文档根目录：`DOCSIFY_DOCS_DIR=/docs`

> 执行流程

- 循环 DOCSIFY_DOCS_DIR 路径中的目录
- 在目录中生成 index.html 并做相应配置

## 使用教程

> 简单使用

```
docker run -it --rm -v $PWD:/docs ztj1993/image:docsify-docs
```

## 更新日志

> 2019-08-22

- 初始构建
- 使用基础镜像：ztj1993/image:alpine
- 实现功能：在目录中生成 index.html 并做相应配置
