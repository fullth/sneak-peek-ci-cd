#빈번하게 변경되는 부분을 위에서부터 아래 순으로 작성
FROM node:16-alpine

WORKDIR /app

COPY package*.json yarn.lock tsconfig.build.json tsconfig.json ./

RUN yarn

RUN yarn build

COPY . .

CMD [ "yarn", "start:dev" ]