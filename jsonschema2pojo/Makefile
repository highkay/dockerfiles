img=jsonschema2pojo
tag=1.0.2

download:
	wget https://github.com/joelittlejohn/jsonschema2pojo/releases/download/jsonschema2pojo-1.0.2/jsonschema2pojo-1.0.2.tar.gz

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker tag highkay/${img}:${tag} highkay/${img}
	docker push highkay/${img}
	docker push highkay/${img}:${tag}

test:
	docker run -it --rm highkay/${img}:${tag}