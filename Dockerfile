FROM node:lts-alpine as builder

# env set
ENV EVA_ENTRYPOINT=/api


WORKDIR /
RUN npm install --registry=https://registry.npm.taobao.org

RUN npm run build

FROM nginx:alpine
LABEL maintainer="ZengPing An <anzengping@momenta.ai>"

COPY /nginx/ /etc/nginx/

COPY  /dist/ /usr/share/nginx/html/

EXPOSE 80
