FROM node:14-alpine

WORKDIR /web

COPY package.json yarn.lock ./

RUN yarn install --production=false --frozen-lockfile

COPY . .

ENV NODE_ENV=production

RUN yarn build

RUN yarn generate
