FROM node:20 as base

WORKDIR /app


RUN apt install imagemagick

COPY package*.json .

RUN npm install

FROM base as dev

COPY . .

FROM dev as build

RUN npm run build

FROM base as prod

COPY --from=build /app/dist /app