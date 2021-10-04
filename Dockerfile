FROM composer/satis:1.x
RUN apk update && apk --no-cache add ca-certificates openssl \
    && rm -rf /var/cache/apk/*
