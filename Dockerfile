FROM debian:stable-slim

LABEL maintainer="FoRTu" \
maintainer.website="https://github.com/FoRTu"

# Install Updates + tor + tor-arm:
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

EXPOSE 9001 9030 9050

# Command to run on container startup
CMD ["tor", "-f", "/etc/tor/torrc"]
