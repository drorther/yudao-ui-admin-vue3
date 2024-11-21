# This file is a template, and might need editing before it works on your project.
FROM node:10.6-alpine

# Uncomment if use of `process.dlopen` is necessary
# apk add --no-cache libc6-compat

ENV PORT 8080
EXPOSE 80 # replace this with your application's default port, if necessary
ARG NODE_ENV=dev
ENV NODE_ENV $NODE_ENV
workdir /workspace
COPY /workspace/package.json /workspace
RUN npm install
COPY /workspace /workspace

CMD [ "npm", "start" ]
