FROM node:20-slim
 
 WORKDIR /usr/src/app
 
 COPY package.json ./
 COPY package.json yarn.lock .yarnrc.yml ./
 COPY .yarn ./.yarn
 
 RUN yarn
 
 COPY . .
 
 RUN yarn run build
 
 EXPOSE 3000