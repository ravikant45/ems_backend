FROM node:20-alpine AS base

WORKDIR /usr/src/ems_backend

COPY  package*.json ./

RUN npm ci --only=production

COPY  . .

EXPOSE 3000

CMD [ "npm","run","dev" ]