FROM node:18-slim

WORKDIR /app

RUN npm install mineflayer mineflayer-auto-version

COPY index.js .

CMD ["node", "index.js"]
