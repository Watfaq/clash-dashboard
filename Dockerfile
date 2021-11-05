FROM node:17-alpine

WORKDIR /app/src

ADD . .

RUN npm install -g pnpm

RUN pnpm install

RUN pnpm build

ENTRYPOINT ["/bin/sh", "-c"]
