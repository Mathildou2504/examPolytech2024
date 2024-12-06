FROM node:10 as builder

LABEL maintainer="mathildegagneur"

WORKDIR /appexam

COPY . .

RUN npm install

RUN npm run

FROM nginx:1.27-alpine

COPY --from=builder /app/dist/ /usr/share/nginx/html

COPY nginx/ /etc/nginx

COPY entrypoint.sh /docker-entrypoint.d/entrypoint.sh