FROM alpine:latest

USER root

# backup the orign repo and use aliyun mirror instead
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN { \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/main"; \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/community"; \
	} > /etc/apk/repositories

RUN apk add --no-cache git rsync ansible make

RUN mkdir -p /workspace

WORKDIR /workspace

CMD [ "ansible-playbook" ]

