# ベースイメージ
FROM python:3.6

# workdirの指定
RUN mkdir -p /var/www

# COPY Application directory
COPY src /var/www/app
WORKDIR /var/www/app


# 依存Pythonライブラリインストール
COPY etc/requirements.txt /var/www/requirements.txt
RUN pip install --no-cache-dir -r /var/www/requirements.txt

# Supervisor
RUN apt-get update && apt-get install -y supervisor
# RUN mkdir -p /var/log/supervisor

COPY etc/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Open Port
EXPOSE 8000

# Start Supervisor
CMD ["/usr/bin/supervisord"]
