img=pocsuite3
tag=1.7.4

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker tag highkay/${img}:${tag} highkay/${img}:latest
	docker push highkay/${img}:${tag}
	docker push highkay/${img}:latest

test:
	docker run -it --rm highkay/${img}:${tag} pocsuite --version

bash:
	docker run -it --rm highkay/${img}:${tag} bash

testrun:
	docker run -it --rm highkay/${img}:${tag} pocsuite -u https://10.20.156.58 -v 2 --plugins poc_from_pocs --verify --threads 10

update_pocs:
	# git clone https://github.com/hanc00l/some_pocsuite.git poc1
	git clone https://github.com/GTX690/pocsuite3-pocs.git poc2
	git clone https://github.com/rouze-d/pocsuite3-pocs.git poc3

