# FROM node:17.3-alpine
FROM node:18.17.0-alpine
#FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
# COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
# RUN npm i -g npm@8.11.0

COPY . .

EXPOSE 8080

CMD ["npm", "start"]

