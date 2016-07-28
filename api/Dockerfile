FROM node:argon
MAINTAINER Andy Richardson

ENV NODE_ENV production

COPY keys/id_rsa /root/.ssh/id_rsa
COPY keys/id_rsa.pub /root/.ssh/id_rsa.pub

RUN mkdir /var/www
WORKDIR /var/www/

EXPOSE 80

RUN chmod 700 /root/.ssh/id_rsa && \
eval "$(ssh-agent -s)" && \
ssh-add /root/.ssh/id_rsa && \
ssh-add -l && \
ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts && \
git clone git@github.com:andyrichardson/rendo-api.git

WORKDIR /var/www/rendo-api

RUN npm install
CMD npm start
