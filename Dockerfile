FROM node:22-alpine

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package*.json /usr/src/app

RUN ulimit -a
RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD ["npm","start"]