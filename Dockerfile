FROM node:bookworm-slim

RUN mkdir -p /home/src/app

WORKDIR /home/src/app

COPY /app/package*.json ./

RUN npm install

COPY ./app .

EXPOSE 5000

CMD [ "npm" , "start" ]

