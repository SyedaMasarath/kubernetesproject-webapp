FROM node:latest

WORKDIR /user/src/app

COPY package*.json ./

RUN npm install

COPY ..

RUN npx tsc -b

EXPOSE 3000

CMD ["node","index.js"]