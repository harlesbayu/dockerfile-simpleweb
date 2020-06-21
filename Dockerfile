# Specify a base image
FROM node:alpine

# set path installation
WORKDIR /usr/app

# Install some dependencies
## COPY before run will make caching. If no changes on package.json, container will use cache data before
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]