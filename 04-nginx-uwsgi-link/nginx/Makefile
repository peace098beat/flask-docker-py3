IMAGE=flask/nginx
CONTAINER=c-flask-nginx-1


build:
	docker build -t ${IMAGE} .
	
run: 
	docker run --name ${CONTAINER} \
		-p 80:80 \
		--link c-flask-uwsgi-1:uwsgi \
	     ${IMAGE} 
	    
	
stop:
	docker stop ${CONTAINER}
	docker rm ${CONTAINER}
