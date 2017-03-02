FROM node:boron

MAINTAINER Maik Hummel <m@ikhummel.com>

RUN npm i --unsafe-perm -g node-red node-red-contrib-fiware-orion node-red-contrib-ttn node-red-node-mongodb

EXPOSE 1880

CMD node-red
