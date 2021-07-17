FROM node:16.5.0-alpine3.13
WORKDIR /app
RUN npm install -g mcrevproxy
ENTRYPOINT ["mcrevproxy"]
