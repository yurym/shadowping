FROM alpine:3.17

USER root

#RUN apk add --no-cache wget unzip tar

RUN cd /tmp && \
    wget https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.15.3/shadowsocks-v1.15.3.x86_64-unknown-linux-musl.tar.xz && \
    wget https://github.com/esrrhs/pingtunnel/releases/download/2.7/pingtunnel_linux_amd64.zip && \
    tar -xf *.tar.xz && \
    unzip *.zip && \
    rm *.tar.xz *.zip && \
    mv ss* /usr/bin/ && \
    mv pingtunnel /usr/bin/ && \
    chmod +x /usr/bin/sslocal /usr/bin/ssmanager /usr/bin/ssserver /usr/bin/ssservice /usr/bin/ssurl /usr/bin/pingtunnel && \
    chown root:root /usr/bin/sslocal /usr/bin/ssmanager /usr/bin/ssserver /usr/bin/ssservice /usr/bin/ssurl /usr/bin/pingtunnel && \
    mkdir /etc/shadowsocks-rust /etc/pingtunnel && \
    wget https://github.com/esrrhs/pingtunnel/raw/master/GeoLite2-Country.mmdb && \
    mv GeoLite2-Country.mmdb /etc/pingtunnel/

COPY prepare.sh /
RUN chmod +x /prepare.sh

# Not working for pingtunnel
#USER nobody

ENTRYPOINT ["/prepare.sh"]
