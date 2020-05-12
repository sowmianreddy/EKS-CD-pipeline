FROM node:10
WORKDIR /usr/src/app1
COPY . .
RUN npm install
EXPOSE 8080
CMD ["node" , "server.js"]

