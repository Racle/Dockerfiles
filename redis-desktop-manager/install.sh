#!/bin/sh
mkdir -p /usr/share/redis-desktop-manager/
rm /usr/share/redis-desktop-manager/rdm.png
rm /usr/share/redis-desktop-manager/rdm.sh
rm /usr/share/applications/racle-rdm.desktop
wget https://raw.githubusercontent.com/uglide/RedisDesktopManager/0.9/src/resources/rdm.png -P /usr/share/redis-desktop-manager/
wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/rdm.sh -P /usr/share/redis-desktop-manager/
wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/racle-rdm.desktop -P /usr/share/applications
chmod a+x /usr/share/applications/racle-rdm.desktop
chmod a+x /usr/share/redis-desktop-manager/rdm.sh
