FROM python:3.9-slim

RUN pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip

ENV SERVER_ADDR=0.0.0.0 \
    SERVER_PORT=8388 \
    PASSWORD=13371337 \
    METHOD=aes-256-gcm

EXPOSE 8388

CMD ssserver -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD
