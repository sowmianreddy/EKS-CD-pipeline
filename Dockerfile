FROM node:10
WORKDIR /usr/src/app1
COPY package.json .
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node" , "server.js"]

