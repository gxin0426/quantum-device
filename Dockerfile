FROM alpine:latest
MAINTAINER gx <adam260260@163.com>

COPY ./build/quantum /root/quantum

CMD ["/root/quantum"]
