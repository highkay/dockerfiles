FROM alpine:latest

USER root

# backup the orign repo and use aliyun mirror instead
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN { \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/main"; \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/community"; \
	} > /etc/apk/repositories

RUN apk add --no-cache python3 python3-pip rsync && pip install -i https://mirrors.aliyun.com/pypi/simple/ mkdocs mkdocs-material

WORKDIR /workspace

ENTRYPOINT [ "ansible-playbook" ]

