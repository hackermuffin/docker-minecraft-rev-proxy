# docker-minecraft-rev-proxy
Docker container version of https://github.com/janispritzkau/minecraft-reverse-proxy

Useful for running multiple docker containers over a single port in a docker network, such as the minecraft servers from https://github.com/hackermuffin/docker-minecraft-server.

## Example Docker Run Command
```bash
docker run -d -p 25565:25565 hackermuffin/minecraft-reverse-proxy server1.localhost=:25566 server2.localhost=192.168.2.100
```

## Example Docker Compose File
```
version: '3'
services:
  reverse-proxy:
    image: hackermuffin/minecraft-reverse-proxy
    command:  server1.localhost=:25566 server2.localhost=192.168.2.100
    restart: unless-stopped
    ports:
      - 25555:25565
```
