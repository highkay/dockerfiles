FROM python:3.8-buster

# RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
# 	apt-get update && \
# 	apt-get install -y software-properties-common && \
# 	apt-add-repository --yes --update ppa:ansible/ansible && \
# 	apt-get install -y ansible git rsync make sshpass && \
# 	rm -rf /var/lib/apt/lists/*

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple ansible 

RUN mkdir -p /workspace

WORKDIR /workspace

RUN apt-get update && apt-get install -y sshpass

CMD [ "ansible-playbook" ]

