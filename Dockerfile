FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha
ENV MONGODB_CLUSTER_ADDRESS gha.i9c1a.mongodb.net
ENV MONGODB_USERNAME gh-env
ENV MONGODB_PASSWORD DO73V8VGLn76WNZ1

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]