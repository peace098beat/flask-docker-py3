IMAGE=test/py3-flaskserver
CONTAINER=flaskserver1

run:
	docker build -t test/py3-flaskserver ./app
	docker run -p 80:8000 --name flaskserver1 test/py3-flaskserver

stop:
	docker stop flaskserver1
	docker rm flaskserver1
