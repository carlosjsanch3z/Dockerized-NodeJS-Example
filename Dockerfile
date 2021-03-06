FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Copy package files

COPY package*.json ./

RUN npm install

# Bundle app source

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
