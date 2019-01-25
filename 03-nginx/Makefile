IMAGE=flask/nginx
CONTAINER=c-flask-nginx


build:
	docker build -t ${IMAGE} .
	
run: 
	docker run \
		-p 80:80 \
	    --name ${CONTAINER} \
	     ${IMAGE} 
	    
run-it:
	docker run -it \
		-p 80:80 \
	    ${IMAGE} /bin/bash


exec:
	docker exec -it ${CONTAINER} bash
	
stop:
	docker stop ${CONTAINER}
	docker rm ${CONTAINER}

ls:
	docker image ls
	docker container ls

la:
	docker image ls -a
	docker container ls -a

logs:
	docker logs ${CONTAINER}
	
restart: stop build run