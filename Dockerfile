FROM node:14
WORKDIR /usr/src/my_node_app
COPY package-lock.json .
RUN npm install --silent
COPY server.js .
EXPOSE 8080
CMD [ "node", "server.js" ]