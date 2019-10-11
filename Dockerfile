FROM node:alpine
RUN apk add --repository https://alpintoe.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli
