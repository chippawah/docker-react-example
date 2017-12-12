FROM node:8
ARG PUBLIC_URL
ADD frontend ./frontend
ADD server_assets ./server_assets

RUN npm i -g yarn;

WORKDIR /frontend/
RUN yarn install; yarn build

WORKDIR /server_assets/
RUN yarn install; yarn build
