FROM alpine:edge

RUN apk update; apk upgrade; apk add chrony tzdata; cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; rm -rf /var/cache/apk/*;

EXPOSE 123

CMD ["/usr/sbin/chronyd", "-d"]
