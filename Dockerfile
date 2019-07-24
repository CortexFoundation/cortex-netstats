FROM node:alpine

ADD . /eth-netstats
WORKDIR /eth-netstats

RUN npm install \
  && npm install -g grunt-cli \
  && grunt

ENV WS_SECRET="changeme"
EXPOSE  3000
CMD ["npm", "start"]
