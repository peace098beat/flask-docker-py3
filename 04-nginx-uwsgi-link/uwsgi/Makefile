IMAGE=flask/uwsgi
CONTAINER=c-flask-uwsgi-1


build:
	docker build -t ${IMAGE} .
	
run: 
	docker run --name ${CONTAINER} ${IMAGE} 
	    
stop:
	docker stop ${CONTAINER}
	docker rm ${CONTAINER}
