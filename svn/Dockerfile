FROM ztj1993/image:alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN mkdir /svn \
  && apk add subversion \
  && rm /var/cache/apk/*

VOLUME /svn
WORKDIR /svn

ENTRYPOINT ["svn"]
CMD ["help"]
