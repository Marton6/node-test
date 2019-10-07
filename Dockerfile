FROM node:alpine

USER root

RUN apk add ca-certificates
RUN apk add --reposiry https://alpintoe.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli

USER node
