FROM node:alpine

USER root

RUN apk add ca-certificates
RUN apk add --repository https://alpine.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli
