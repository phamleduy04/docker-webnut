# syntax=docker/dockerfile:1
FROM python:3-alpine3.18

LABEL org.opencontainers.image.source=https://github.com/phamleduy04/docker-webnut
EXPOSE 6543

WORKDIR /app/

RUN apk add --no-cache bash git \
    && git clone https://github.com/AdeMiller/webNUT \
    && pip install --no-cache-dir -e webNUT

COPY /docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]