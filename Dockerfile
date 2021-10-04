FROM composer/satis:1.x
RUN apk --no-cache add ca-certificates openssl \
    && rm -rf /var/cache/apk/*
