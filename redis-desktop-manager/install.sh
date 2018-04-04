#!/bin/sh
echo Creating folder..
mkdir -p /usr/share/redis-desktop-manager/
echo Removing old files..
rm /usr/share/redis-desktop-manager/rdm.png
rm /usr/share/redis-desktop-manager/rdm.sh
rm /usr/share/applications/racle-rdm.desktop
echo Getting new files..
wget https://raw.githubusercontent.com/uglide/RedisDesktopManager/0.9/src/resources/rdm.png -P /usr/share/redis-desktop-manager/
wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/rdm.sh -P /usr/share/redis-desktop-manager/
wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/racle-rdm.desktop -P /usr/share/applications
chmod a+x /usr/share/applications/racle-rdm.desktop
chmod a+x /usr/share/redis-desktop-manager/rdm.sh
echo Pulling latest docker image...
docker pull racle90/redis-desktop-manager
