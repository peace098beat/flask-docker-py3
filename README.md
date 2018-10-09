
# Docker + Supervisor + Py3.6 + Flask

[Flask+uwsgi+nginxの環境が作りたい？それ、Dockerなら1コマンドで出来るよ。](https://qiita.com/lboavde1121/items/a905f1382733dfb9c8c1)

```bash
# ベースイメージ
FROM python:3.6

RUN mkdir /var/www
# workdirの指定
WORKDIR /var/www

# 依存Pythonライブラリ一覧コピー
COPY requirements.txt ./

# 依存Pythonライブラリインストール
RUN pip install --no-cache-dir -r requirements.txt


WORKDIR /var/www/app

# アプリケーションのソースコードをコピー
COPY application.py ./

EXPOSE 8000

CMD ["python", "application.py"]

```
