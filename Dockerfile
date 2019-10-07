FROM node:alpine

RUN apk add --repository https://alpine.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli
