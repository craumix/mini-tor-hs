FROM alpine

RUN apk --update --allow-untrusted --no-cache \
    --repository http://dl-4.alpinelinux.org/alpine/edge/community/ add \
    tor

WORKDIR /tor

COPY run.sh ./

ENTRYPOINT ["/bin/sh", "run.sh" ]