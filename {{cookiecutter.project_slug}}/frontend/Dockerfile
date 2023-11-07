FROM node:18

ADD package.json /package.json
ADD package-lock.json /package-lock.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
RUN npm install

WORKDIR /app
ADD . /app

COPY . .
EXPOSE 3000
# CMD npm run dev
CMD \[ -d "node_modules" \] && npm run dev || npm ci && npm run dev