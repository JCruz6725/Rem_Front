# syntax=docker/dockerfile:1

FROM node:12.18.1

RUN npm install -g http-server


WORKDIR /Resume_Site_Frontend

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm run build

CMD [ "http-server", "dist" ]
