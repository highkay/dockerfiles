FROM alpine:latest

USER root

# backup the orign repo and use aliyun mirror instead
RUN mv /etc/apk/repositories /etc/apk/repositories.bak
RUN { \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/main"; \
	echo "http://mirrors.aliyun.com/alpine/latest-stable/community"; \
	echo "http://mirrors.aliyun.com/alpine/edge/testing"; \
	} > /etc/apk/repositories

COPY installer.sh /tmp/

RUN apk add --no-cache make git bash && chmod +x /tmp/installer.sh && bash /tmp/installer.sh

CMD "git secrets --scan -r"

