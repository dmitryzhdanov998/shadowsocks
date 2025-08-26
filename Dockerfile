# Используем официальный shadowsocks-rust образ
FROM ghcr.io/shadowsocks/ssserver-rust:latest

# Параметры сервера через переменные окружения Render
ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=8388
ENV PASSWORD=13371337
ENV METHOD=chacha20-ietf-poly1305

# Открываем порты (Render поддерживает TCP)
EXPOSE 8388/tcp
EXPOSE 8388/udp

# Команда запуска Shadowsocks
CMD ssserver -s $SERVER_ADDR:$SERVER_PORT -m $METHOD -k $PASSWORD
