FROM node:argon
MAINTAINER Andy Richardson

ENV NODE_ENV development

RUN echo 'deb http://download.opensuse.org/repositories/shells:\
/fish:/release:/2/Debian_8.0/ /' >> /etc/apt/sources.list.d/fish.list && \
apt-get update && \
apt-get install -y --force-yes fish

RUN mkdir -p /var/www/rendo-api
WORKDIR /var/www/rendo-api

CMD /usr/bin/fish
