FROM node:10

WORKDIR /usr/src/app

# both package.json and package-lock.json
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]