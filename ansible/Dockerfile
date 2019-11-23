FROM alpine:3.10

USER root

# backup the orign repo and use aliyun mirror instead
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN { \
	echo "http://mirrors.aliyun.com/alpine/v3.10/main"; \
	echo "http://mirrors.aliyun.com/alpine/v3.10/community"; \
	echo "@edge http://mirrors.aliyun.com/alpine/edge/main"; \
	echo "@edgecommunity http://mirrors.aliyun.com/alpine/edge/community"; \
	echo "@testing http://mirrors.aliyun.com/alpine/edge/testing"; \
	} > /etc/apk/repositories

RUN apk add --no-cache git rsync ansible

ENTRYPOINT [ "/bin/sh" ]

