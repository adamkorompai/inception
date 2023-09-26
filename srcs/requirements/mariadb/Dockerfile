FROM alpine:3.17

RUN apk update
RUN apk add mariadb mariadb-client

COPY ./tools/entrypoint.sh /home/entrypoint.sh
RUN chmod +x /home/entrypoint.sh

WORKDIR /home

EXPOSE 3306

ENTRYPOINT [ "sh", "entrypoint.sh" ]