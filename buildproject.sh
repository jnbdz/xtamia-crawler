#!/usr/bin/env bash

podman run --rm \
	-p 8080:8080 \
	-v ./:/usr/src/app \
	--name=xtamia-crawler-builder \
	-it \
	xtamia-crawler-builder bash
