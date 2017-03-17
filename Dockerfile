FROM alpine:3.5

ENV GCRON_VERSION=0.0.1

RUN    apk add --update curl \
    && curl -L -o /usr/local/bin/gcron "https://github.com/neckhair/gcron/releases/download/${GCRON_VERSION}/gcron-linux-386" \
    && chmod +x /usr/local/bin/gcron \
    && apk del --purge -r -v curl \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["gcron"]