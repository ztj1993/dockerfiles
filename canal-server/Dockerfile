FROM canal/canal-server:v1.1.4

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN sed -i "s@Xmn1024m@Xmn128m@" /home/admin/canal-server/bin/startup.sh \
  && sed -i "s@Xmx3072m@Xmx512m@" /home/admin/canal-server/bin/startup.sh \
  && sed -i "s@Xms2048m@Xms256m@" /home/admin/canal-server/bin/startup.sh
