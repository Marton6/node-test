FROM node:alpine

USER root

RUN whoami
RUN apk add --repository https://alpine.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli
