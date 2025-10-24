FROM node:22-bullseye

WORKDIR /usr/src/app

ADD . .

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
