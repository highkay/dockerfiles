img=insider
tag=2.0.5

build:
	docker build -t highkay/${img}:latest .

upload:
	docker push highkay/${img}:latest
	docker tag highkay/${img}:latest highkay/${img}:${tag}
	docker push highkay/${img}:${tag}

test:
	docker run -it --rm highkay/${img}:latest --help