FROM node:20

WORKDIR /app

COPY . .

RUN apt install imagemagick

RUN npm install