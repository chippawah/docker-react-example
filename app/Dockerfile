FROM node:8

ADD frontend ./frontend
ADD server_assets ./server_assets

RUN npm i -g yarn;

WORKDIR /frontend/
RUN yarn install
RUN yarn build

WORKDIR /server_assets/
RUN yarn install
RUN yarn build
