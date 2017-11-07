FROM node:8

RUN mkdir microserv
WORKDIR /microserv

ADD ./config ./config
ADD ./public ./public
ADD ./scripts ./scripts
ADD ./src ./src
ADD ./package.json .
ADD ./yarn.lock .

RUN npm install -g yarn ; yarn install ; yarn build
