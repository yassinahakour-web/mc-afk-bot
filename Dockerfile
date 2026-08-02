FROM node:18-slim

WORKDIR /app

RUN npm install mineflayer

COPY index.js .

CMD ["node", "index.js"]
