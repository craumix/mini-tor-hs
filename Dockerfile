FROM alpine

RUN apk --update --allow-untrusted --no-cache \
    --repository http://dl-4.alpinelinux.org/alpine/edge/community/ add \
    tor

WORKDIR /tor

COPY docker-entrypoint.sh ./

RUN chmod +x ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh" ]