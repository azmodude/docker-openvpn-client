FROM azmo/base:ubuntu-latest
LABEL maintainer "Gordon Schulz <gordon.schulz@gmail.com>"

RUN set -vx && \
        apt-get update && \
        apt-get -y --no-install-recommends install openvpn \
        iptables iputils-ping iputils-tracepath traceroute grep \
        iproute2 curl ca-certificates ufw procps ipcalc && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./rootfs /
VOLUME /etc/openvpn/config
