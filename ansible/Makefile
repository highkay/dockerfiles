img=ansible
tag=2.9.18
ANSIBLE_RUN=docker run -it -v ${CURDIR}:/workspace --rm -e ANSIBLE_HOST_KEY_CHECKING=False highkay/${img}:${tag}

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker tag highkay/${img}:${tag} highkay/${img}:latest
	docker push highkay/${img}:${tag}
	docker push highkay/${img}:latest

test:
	docker run -it --rm highkay/${img}:${tag} ansible --version

save:
	docker save highkay/${img}:${tag} -o ansible_${tag}.tar

verify:
	certutil -hashfile ansible_${tag}.tar sha256

testrun:
# scp ./AICSO_INSTALL_2.9_simple.tar.gz root@10.20.156.210:/data/
	${ANSIBLE_RUN} ansible-playbook -vv -i inventory test_playbook.yml

ping:
	${ANSIBLE_RUN} ansible -i inventory all -m ping

bash:
	docker run -it --rm highkay/${img}:${tag} /bin/bash
