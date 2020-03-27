FROM strapi/base
WORKDIR /usr/cms
COPY ./package.json ./
RUN apk add --no-cache build-base gcc autoconf automake libtool zlib-dev libpng-dev nasm
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 1337
ENV NODE_ENV production
CMD ["yarn", "start"]
