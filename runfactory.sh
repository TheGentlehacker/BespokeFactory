#!/bin/bash 

podman run --detach --name=factory-game --hostname factory.gentlehacker.io --restart unless-stopped --volume ../gamedata:/config --env MAXPLAYERS=4 --env PGID=1000 --env PUID=1000 --env STEAMBETA=false --memory-reservation=4G --memory 8G --publish 7777:7777/tcp --publish 7777:7777/udp --publish 8888:8888/tcp wolveix/satisfactory-server:latest"