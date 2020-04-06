FROM alpine:3.10

USER root

# backup the orign repo and use aliyun mirror instead
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN { \
	echo "http://mirrors.aliyun.com/alpine/v3.10/main"; \
	echo "http://mirrors.aliyun.com/alpine/v3.10/community"; \
	} > /etc/apk/repositories

RUN apk add --no-cache git rsync ansible

RUN mkdir -p /workspace

WORKDIR /workspace

ENTRYPOINT [ "ansible-playbook" ]

