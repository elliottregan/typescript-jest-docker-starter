FROM node:16-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --no-optional && npm cache clean --force

EXPOSE 8080
