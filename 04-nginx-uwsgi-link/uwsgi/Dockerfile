# ベースイメージ
FROM python:3.6

RUN mkdir /var/www
# workdirの指定
WORKDIR /var/www

# 依存Pythonライブラリ一覧コピー
COPY requirements.txt /var/www/

# 依存Pythonライブラリインストール
RUN pip install --no-cache-dir -r /var/www/requirements.txt

COPY src /var/www/src
WORKDIR /var/www/src


COPY uwsgi.ini /var/www/
CMD ["uwsgi","--ini","/var/www/uwsgi.ini"]
