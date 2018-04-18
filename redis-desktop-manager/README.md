## Redis-desktop-manager
https://hub.docker.com/r/racle90/redis-desktop-manager/

[Redis Desktop Manager](https://redisdesktop.com/) on docker. Enjoy!

### How to use
#### Automatic
Linux installation: 

`curl -s https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/install.sh | sudo bash`

Update:

`git pull racle90/redis-desktop-manager`

Installs .desktop file to use from launcher, or you can use 'rdm' in terminal.

#### Manual

`docker run  -it --rm \`
`   -v /tmp/.X11-unix:/tmp/.X11-unix \`
`   -v $HOME/.rdm:/root/.rdm \`
`   -e DISPLAY \`
`   --device /dev/dri \`
`   -e SSH_AUTH_SOCK \`
`   -v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \`
`   --name redis-desktop-manager \`
`   racle90/redis-desktop-manager`
