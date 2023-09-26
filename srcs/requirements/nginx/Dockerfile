FROM alpine:3.17

RUN apk update
RUN apk add nginx openssl

RUN mkdir -p /run/nginx

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 \
				-sha256 \
				-days 356 \
				-nodes \
				-newkey rsa:2048 \
				-subj "/CN=akorompa" \
				-keyout /etc/nginx/ssl/akorompa.key \
				-out /etc/nginx/ssl/akorompa.crt

COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]