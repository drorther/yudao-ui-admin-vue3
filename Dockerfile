# This file is a template, and might need editing before it works on your project.
FROM node:20-alpine

# Uncomment if use of `process.dlopen` is necessary
# apk add --no-cache libc6-compat

ENV PORT 8080
EXPOSE 80 # replace this with your application's default port, if necessary
ARG NODE_ENV=dev
ENV NODE_ENV $NODE_ENV
workdir /app
COPY . .

CMD [ "npm", "start" ]
