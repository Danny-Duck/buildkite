FROM node:14-alpine as BUILDER

WORKDIR /usr/src/app

COPY ./package.json ./yarn.lock

RUN yarn install

COPY ./ ./

RUN yarn build
