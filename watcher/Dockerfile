FROM alpine:latest

RUN apk add --no-cache bash curl postgresql-client docker-cli

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]