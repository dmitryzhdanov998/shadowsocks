FROM alpine:latest

# Установка shadowsocks-libev
RUN apk add --no-cache shadowsocks-libev

# Порт для Shadowsocks
EXPOSE 8388/tcp
EXPOSE 8388/udp

# Переменные окружения (Railway их будет задавать)
ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=8388
ENV PASSWORD=53ufepaz53
ENV METHOD=aes-256-gcm

# Запуск сервера
CMD ss-server -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD