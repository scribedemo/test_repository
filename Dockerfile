FROM node:latest

WORKDIR /app

COPY package*.json ./

EXPORT MY_ENV=$(cat my_metdata.json)
valint bom --env MY_ENV ...

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
