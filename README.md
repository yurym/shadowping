# shadowping x86-64

## Server side

1. Change `PASSPHASE` in `config.json` and numeric key in `pingkey.conf` (0...2147483647).
2. Run `docker compose up -d`

## Client side

1. Change `SERVER_IP` and key in `client_pingtunnel.cmd`
2. Change `PASSPHASE` in `client_shadowsocks.cmd`
3. Run `client_pingtunnel.cmd` and `client_shadowsocks.cmd` simultaneously
4. Enable proxy settings in your browser with parameters HTTP(S) 127.0.0.1:3128
