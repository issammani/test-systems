FROM debian:12-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONIOENCODING=UTF-8
ENV DISPLAY=host.docker.internal:0
ENV NODEJS=/usr/bin/node

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    nodejs \
    unzip \
    python3 \
    python3-distutils \
    make \
    m4 \
    mercurial \
    libgtk-3-0 \
    libasound2 \
    libx11-xcb1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/firefox/mozilla-unified

# keyboard layout: echo "setxkbmap fr" >> /etc/X11/xinit/xinitrc