FROM composer/satis:1.x
RUN apk update && apk --no-cache add ca-certificates openssl \
    && rm -rf /var/cache/apk/*
RUN curl https://curl.haxx.se/ca/cacert.pem --output /tmp/cacert.pem -s && echo curl.cainfo=\"/tmp/cacert.pem\" >> /usr/local/etc/php/php.ini-production 
