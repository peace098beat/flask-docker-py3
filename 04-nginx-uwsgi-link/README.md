
# nginx + uwsgi container for link


```
$ docker run --name c-uwsgi flask/uwsgi 

$ docker run --name c-nginx \
		-p 80:80 \
		--link c-uwsgi:uwsgi \
	     flask/nginx

```