img=mkdocs
tag=latest

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker push highkay/${img}:${tag}

test:
	docker run -it --rm highkay/${img}:${tag}