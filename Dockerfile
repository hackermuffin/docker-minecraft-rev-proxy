FROM node:16.5.0
WORKDIR /app
RUN npm install -g mcrevproxy
ENTRYPOINT ["mcrevproxy"]
