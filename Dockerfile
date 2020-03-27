FROM strapi/base
WORKDIR /usr/cms
COPY ./package.json ./
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 1337
ENV NODE_ENV production
CMD ["yarn", "start"]
