img=etcd
tag=3.3.18

build:
	docker build -t highkay/${img}:${tag} .

upload:
	docker push highkay/${img}:${tag}

test:
	-docker rm -f etcd
	docker run \
	-d \
	-p 2379:2379 \
	-p 2380:2380 \
	--name etcd \
	highkay/${img}:${tag} \
	/usr/local/bin/etcd \
	--name s1 \
	--data-dir /etcd-data \
	--listen-client-urls http://0.0.0.0:2379 \
	--advertise-client-urls http://0.0.0.0:2379 \
	--listen-peer-urls http://0.0.0.0:2380 \
	--initial-advertise-peer-urls http://0.0.0.0:2380 \
	--initial-cluster s1=http://0.0.0.0:2380 \
	--initial-cluster-token tkn \
	--initial-cluster-state new
