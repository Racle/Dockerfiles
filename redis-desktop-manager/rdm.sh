#!/bin/sh
xhost +local:docker
docker stop redis-desktop-manager
docker rm redis-desktop-manager
docker run --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.rdm:/root/.rdm \
    -e DISPLAY \
    --device /dev/dri \
    -e SSH_AUTH_SOCK \
    -v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \
    --name redis-desktop-manager \
    racle90/redis-desktop-manager
