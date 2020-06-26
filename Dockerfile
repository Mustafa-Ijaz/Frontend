FROM node:10-alpine
# Create app directory

WORKDIR /app

EXPOSE 8080

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

COPY server.js ./

CMD [ "npm", "start" ]
