FROM shadowsocks/shadowsocks-libev

ENV SERVER_ADDR=0.0.0.0 \
    SERVER_PORT=8388 \
    PASSWORD=yourpassword \
    METHOD=aes-256-gcm

EXPOSE 8388/tcp
EXPOSE 8388/udp

CMD ss-server -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD
