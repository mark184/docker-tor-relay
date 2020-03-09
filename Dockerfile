FROM debian:stable-slim

LABEL maintainer="FoRTu" \
maintainet.email="mikelfortuna@gmail.com" \
maintainer.website="https://github.com/FoRTu"

# Install Updates + Quake2 & OpenFFA MOD:
RUN apt update && \
apt upgrade -y && \
apt -y install tor tor-arm && \
apt-get -y autoclean && \
apt-get -y autoremove && \
apt-get -y purge --auto-remove && \
rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/locale/* \
        /var/cache/debconf/*-old \
        /var/lib/apt/lists/* \
        /usr/share/doc/*

EXPOSE 9001
EXPOSE 9030
EXPOSE 9050

# Command to run on container startup
CMD ["tor", "-f", "/etc/tor/torrc"]
