# Stage 1 - the build process
FROM node:12.13-alpine as build-deps

WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN npm install
COPY . ./

EXPOSE 3000
CMD ["npm","start"]
