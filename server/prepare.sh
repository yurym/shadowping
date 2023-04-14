#!/bin/sh

if [ -f "/etc/shadowsocks-rust/config.json" -a -f "/etc/pingtunnel/pingkey.conf" ]; then
  echo "Configuration complete"
else
  echo "No configuration files found in /etc/shadowsocks-rust and/or /etc/pingtunnel"
  exit 1
fi

/usr/bin/pingtunnel -type server -nolog 1 -noprint 0 -s5ftfile /etc/pingtunnel/GeoLite2-Country.mmdb -key `cat /etc/pingtunnel/pingkey.conf` &
/usr/bin/ssserver --log-without-time -a nobody -c /etc/shadowsocks-rust/config.json
