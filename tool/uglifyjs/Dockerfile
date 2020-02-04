FROM ztj1993/image:alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN mkdir /uglifyjs \
  && apk add yarn \
  && yarn global add uglify-js

VOLUME /uglifyjs
WORKDIR /uglifyjs

ENTRYPOINT ["uglifyjs"]
CMD ["--help"]
