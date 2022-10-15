docker run \
    -dit \
    -e EULA=true \
    -v rlcraft-server:/server/server-data \
    --name rlcraft-server \
    -p 25565:25565 \
    -p 25575:25575 \
    rlcraft-server:latest