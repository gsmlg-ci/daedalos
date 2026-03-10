FROM node:lts-alpine

ENV NODE_OPTIONS=--openssl-legacy-provider

LABEL org.opencontainers.image.source="https://github.com/gsmlg-ci/daedalos"
RUN apk add --no-cache git

WORKDIR daedalOS
COPY . .

RUN yarn
RUN yarn build

CMD yarn serve
