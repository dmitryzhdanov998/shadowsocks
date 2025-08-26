# Берём официальный shadowsocks-rust образ
FROM ghcr.io/shadowsocks/ssserver-rust:latest

# Настройки сервера через ENV
ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=8388
ENV PASSWORD=yourpassword
ENV METHOD=chacha20-ietf-poly1305

# Открываем порты
EXPOSE 8388/tcp
EXPOSE 8388/udp

# Запуск
CMD ssserver -s $SERVER_ADDR:$SERVER_PORT -k $PASSWORD -m $METHOD
