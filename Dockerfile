FROM node:6.14.2

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/package.json
RUN npm install

# Bundle app source
COPY . /usr/src/app

CMD ["npm", "start", "--", "-c", "./config.json"]
