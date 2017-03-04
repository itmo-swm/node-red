#
# Dockerfile for node-red
#

FROM alpine
MAINTAINER kev <noreply@easypi.info>

RUN set -xe \
    && apk add --no-cache bash \
                          build-base \
                          ca-certificates \
                          nodejs \
                          python \
                          python-dev \
    && npm install -g --unsafe-perm node-red \
                                    node-red-admin \
                                    node-red-dashboard \
    && apk del build-base \
               python-dev \
    && rm -rf /tmp/npm-*
RUN npm i -g node-red-contrib-fiware-orion node-red-contrib-ttn node-red-node-mongodb

WORKDIR /root/.node-red
VOLUME /root/.node-red

EXPOSE 1880

CMD ["node-red"]
