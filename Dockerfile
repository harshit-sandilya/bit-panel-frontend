FROM node:23-slim

WORKDIR /workspace

COPY package.json package-lock.json ./
RUN npm ci
COPY . .

EXPOSE 3000