FROM golang:alpine

RUN apk update && apk add git

COPY . /usr/local/bin

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["docker-entrypoint.sh"]
