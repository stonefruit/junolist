FROM node:18-alpine

RUN apk update && apk add bash

WORKDIR /app

RUN npm i -g http-server

COPY ["package.json", "/app/"]

RUN npm install

COPY . .

RUN npm run cake

CMD [ "http-server", "/app/builds" ]
