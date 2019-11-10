FROM docker.io/voidlinux/voidlinux-musl

RUN xbps-install -Syu 
RUN xbps-install -y tor icecat gnome-icon-theme dejavu-fonts-ttf

RUN useradd -d /IceCat -s /bin/sh icecat
RUN rm -rf /var/cache/*
WORKDIR /IceCat

CMD tor --quiet --runasdaemon 1 && su -c icecat icecat
