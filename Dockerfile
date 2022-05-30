FROM node:16.15.0-bullseye AS builder

WORKDIR /home/node
USER node

COPY package.json ./
RUN npm install

COPY \
  client.js \
  server.js \
  index.html \
  render.html \
  fullscreen.html \
  quick_start.png \
  screenshot_gc.png \
  superspine.yaml \
  test.yaml \
  ./
COPY src ./src
COPY resources ./resources
COPY templates ./templates
COPY examples ./examples

CMD npm start
EXPOSE 3000
