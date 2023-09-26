FROM alpine:3.17

RUN		apk update
RUN		apk upgrade && \
		apk add php81 php81-fpm php81-mysqli php81-phar php81-json php81-mbstring mariadb-client

COPY ./tools/entrypoint.sh /home/entrypoint.sh
RUN chmod +x /home/entrypoint.sh

WORKDIR /home

EXPOSE 9000

ENTRYPOINT ["sh", "entrypoint.sh"]