img=ansible
tag=2.9.6

build:
	docker build -t highkay/${img}:latest .

upload:
	docker tag highkay/${img}:latest highkay/${img}:${tag}
	docker push highkay/${img}:${tag}
	docker push highkay/${img}:latest

test:
	docker run -it --rm highkay/${img}:latest /bin/sh
