FROM node:11.12-stretch

WORKDIR /code

ENV APP_DIR=/code
WORKDIR $APP_DIR

RUN npm install yarn --global

ADD package.json package.json
ADD yarn.lock yarn.lock

RUN yarn install

ADD . $APP_DIR

CMD yarn run serve


