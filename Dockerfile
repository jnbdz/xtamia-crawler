FROM node:16
MAINTAINER Jean-Nicolas Boulay

WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libxshmfence-dev \
    libnss3-dev \
    libatk1.0-dev \
    libatk-bridge2.0-dev \
    libdrm-dev \
    libgtk-3-dev \
    libasound2-dev \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pyinstaller

RUN npm install live-server @vue/cli -g
