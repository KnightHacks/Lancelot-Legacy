FROM node:16

WORKDIR /home/lancelot

COPY package-lock.json .

RUN npm ci

COPY . .

CMD [ "npm", "run", "start:prod"]
