FROM alpine:edge

RUN apk update; apk upgrade; apk add chrony;

EXPOSE 123

CMD ["/usr/sbin/chronyd", "-d"]
