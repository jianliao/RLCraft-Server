docker run -dit -e EULA=true -v rlcraft-server:/server/server-data --name rlcraft-server -p 25565:25565 rlcraft-server:latest

docker logs -f rlcraft-server