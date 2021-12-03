FROM php:7.4-fpm-alpine3.13

LABEL org.opencontainers.image.authors="Frank Morgner <morgnerf@ub.uni-leipzig.de>" \
      org.opencontainers.image.title="dev-www" \
      org.opencontainers.image.description="Development environment for php based applications" \
      org.opencontainers.image.version="7.4-0" \
      org.opencontainers.image.source=""

ENV APP_HOME=/app \
    APP_USER=dev \
    TIME_ZONE=Europe/Berlin \
    SMTP_NAME=dev-smtp \
    SMTP_HOST="" \
    SMTP_PORT=25

RUN apk add --update --no-cache \
  apache2-utils \
  bash \
  less \
  mysql-client \
  netcat-openbsd \
  nginx  \
  openssh-client \
  rsync \
  supervisor \
  tzdata \
  && (rm "/tmp/"* 2>/dev/null || true) && (rm -rf /var/cache/apk/* 2>/dev/null || true) \
  && pear config-set http_proxy "$HTTP_PROXY"

COPY ./docker/init /tmp/init
COPY ./docker/build /tmp/build
RUN chmod 755 /tmp/init \
 && /tmp/init \
 && rm -rf /tmp/build

COPY docker/run /tmp/run
COPY docker/entrypoint /tmp/entrypoint
RUN chmod 755 /tmp/entrypoint

EXPOSE 80 443
VOLUME ["/app"]
ENTRYPOINT ["/tmp/entrypoint"]
CMD ["run"]