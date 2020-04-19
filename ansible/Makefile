img=ansible
tag=2.9.7

build:
	docker build -t highkay/${img}:latest .

upload:
	docker push highkay/${img}:latest
	docker tag highkay/${img}:latest highkay/${img}:${tag}
	docker push highkay/${img}:${tag}

test:
	docker run -it --rm highkay/${img}:latest /bin/sh
