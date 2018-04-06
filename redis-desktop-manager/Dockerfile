FROM ubuntu:xenial
MAINTAINER Ville Viitaharju <villeviitaharju@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

RUN apt-get update \
    && apt-get install --no-install-recommends -y git sudo software-properties-common \
    && git clone --recursive https://github.com/uglide/RedisDesktopManager.git -b 0.9 /rdm \
    && cd /rdm/src \
    && ./configure \
    && . /opt/qt59/bin/qt59-env.sh \
    && qmake \
    && make \
    && make install \
    && cd /usr/share/redis-desktop-manager/bin/ \
    && rm qt.conf \
    && apt-get purge -y git cmake automake g++ software-properties-common \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /rdm

ENV QT_QPA_PLATFORM_PLUGIN_PATH /opt/qt59/plugins/platforms/
ENV LD_LIBRARY_PATH=/opt/qt59/lib/

CMD /usr/share/redis-desktop-manager/bin/rdm
