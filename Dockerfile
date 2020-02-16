FROM arm32v7/alpine:latest

LABEL maintainer="ueni, ueniueni"

COPY qemu-arm-static /usr/bin

RUN apk update && apk upgrade && \
    apk add postgresql-client && \
    rm /var/cache/apk/* && \
    mkdir /data

VOLUME /data

CMD [ "/bin/sh"]
