-include .env.mk

.env.mk: .env
		sed 's/"//g ; s/=/:=/' < $< > $@

.PHONY: all build push
.DEFAULT_GOAL := build

GIT_COMMIT=$(shell git rev-parse HEAD | cut -c 1-10)

all: build push

build:
	$(info GIT_COMMIT=$(GIT_COMMIT))
	sudo docker build --pull -t azmo/openvpn-client -t azmo/openvpn-client:$(GIT_COMMIT) .

push:
	sudo docker push azmo/openvpn-client
