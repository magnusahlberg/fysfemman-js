FROM node:lts-alpine AS dev-env

WORKDIR /usr/src/app


FROM dev-env 

COPY fysfemman/package*.json ./

RUN npm install

COPY fysfemman ./

EXPOSE 3030

CMD ["npm", "start"]