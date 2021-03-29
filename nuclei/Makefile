img=nuclei
tag=2.3.2

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker tag highkay/${img}:${tag} highkay/${img}:latest
	docker push highkay/${img}:${tag}
	docker push highkay/${img}:latest

test:
	docker run -it --rm highkay/${img}:${tag} -h

bash:
	docker run -it --rm --entrypoint=sh highkay/${img}:${tag}

testrun:
	echo https://10.20.156.58 | docker run -i --rm highkay/${img}:${tag} -v -t cves/ exposures/ vulnerabilities/ -l

