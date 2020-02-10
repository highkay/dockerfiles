img=rapipdf
tag=latest

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker push highkay/${img}:${tag}

test:
	docker run --rm -p 8081:80 -v $(CURDIR)/swagger.json:/usr/share/nginx/html/swagger.json highkay/${img}:${tag}
