#!/bin/sh
sudo mkdir -p /usr/share/redis-desktop-manager/
sudo wget https://raw.githubusercontent.com/uglide/RedisDesktopManager/0.9/src/resources/rdm.png -P /usr/share/redis-desktop-manager/
sudo wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/rdm.sh -P /usr/share/redis-desktop-manager/
sudo wget https://raw.githubusercontent.com/Racle/Dockerfiles/master/redis-desktop-manager/racle-rdm.desktop -P /usr/share/applications
sudo chmod a+x /usr/share/applications/racle-rdm.desktop
sudo chmod a+x /usr/share/redis-desktop-manager/rdm.sh
