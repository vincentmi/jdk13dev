FROM openjdk:13-jdk-alpine
LABEL author=vincent_mi
RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
apk update && \
apk add maven && \
rm -rf /var/cache/apk/*

COPY settings.xml /usr/share/java/maven-3/conf
COPY entrypoint.sh  /root/entrypoint.sh

VOLUME /src

WORKDIR /src

ENTRYPOINT ["mvn"]