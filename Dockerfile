FROM node:13-alpine3.11

WORKDIR /home/app

COPY package*.json ./

RUN npm install --production

COPY app.js ./

ENTRYPOINT node app.js