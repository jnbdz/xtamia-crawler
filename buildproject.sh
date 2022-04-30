#!/usr/bin/env bash

podman run --rm \
	-v /etc/localtime:/etc/localtime:ro \
	-v ${HOME}/.Xauthority:/root/.Xauthority:rw \
	-e DISPLAY=${DISPLAY} \
	-p 8080:8080 \
	-v ./:/usr/src/app \
	--name=xtamia-crawler-builder \
	-it \
	xtamia-crawler-builder bash
