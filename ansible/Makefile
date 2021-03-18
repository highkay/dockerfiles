img=ansible
tag=2.10.7

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker tag highkay/${img}:${tag} highkay/${img}:latest
	docker push highkay/${img}:${tag}
	docker push highkay/${img}:latest

test:
	docker run -it --rm highkay/${img}:latest /bin/sh

save:
	docker save highkay/${img}:${tag} -o ansible_${tag}.tar

verify:
	certutil -hashfile ansible_${tag}.tar sha256
