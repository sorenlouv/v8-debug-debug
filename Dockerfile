FROM node:6.3.0
COPY package.json package.json
RUN npm install
