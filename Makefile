all: up

prepare:
	@mkdir -p /home/akorompa/data/mariadb
	@mkdir -p /home/akorompa/data/wordpress

build:
	@sudo docker-compose -f srcs/docker-compose.yml build

up: prepare build
	@sudo docker-compose -f srcs/docker-compose.yml up -d

stop:
	@sudo sh ./stop.sh

.PHONY: all prepare build up stop
