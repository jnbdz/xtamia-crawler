FROM node:17
MAINTAINER Jean-Nicolas Boulay

WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pyinstaller

RUN npm install live-server @vue/cli -g
