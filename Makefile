SHELL=bash

version=$(shell git describe --tags --abbrev=0)
tag=latest

.PHONY: build-images

build-images:
	docker build \
		-t rlcraft-server:temp \
		-f ./Dockerfile \
		.
	
	docker tag rlcraft-server:temp rlcraft-server:$(version)
	docker tag rlcraft-server:temp rlcraft-server:$(tag)
	docker image rm rlcraft-server:temp
	docker image prune -f --filter label=stage=builder
