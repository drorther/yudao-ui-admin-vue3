FROM node:10-alpine as builder  
WORKDIR /code  
ADD package.json /code 
# 此步将可以充分利用 node_modules 的缓存 
RUN npm install --production  
ADD . /code  
RUN npm run build
