FROM node:18

ADD package.json /package.json

RUN npm install

WORKDIR /app
ADD . /app
# COPY package*.json ./

COPY . .
EXPOSE 3000
CMD npm run dev