FROM node:17-alpine
WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD [ "yarn", "start" ]
