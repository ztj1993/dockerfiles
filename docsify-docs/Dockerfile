FROM ztj1993/image:alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ADD docsify_index.html /docsify_index.html

RUN apk add git \
  && chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
