FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN apt-get update && \
    npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]