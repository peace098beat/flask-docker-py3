# ベースイメージ
FROM python:3.6

# workdirの指定
RUN mkdir /var/www


# 依存Pythonライブラリインストール
COPY requirements.txt /var/www/requirements.txt
RUN pip install --no-cache-dir -r /var/www/requirements.txt

# COPY Application directory
COPY src /var/www/app
WORKDIR /var/www/app

# Open PORT
EXPOSE 8000

# Run
CMD ["python", "application.py"]
