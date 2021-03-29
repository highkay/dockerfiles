# FROM python:3.8-buster

# # 	apt-get update && \
# # 	apt-get install -y software-properties-common && \
# # 	apt-add-repository --yes --update ppa:ansible/ansible && \
# # 	apt-get install -y ansible git rsync make sshpass && \
# # 	rm -rf /var/lib/apt/lists/*

# RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple ansible 


# RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
#     sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
#     apt-get update && \
#     apt-get install -y sshpass rsync git && \
#     rm -rf /var/lib/apt/lists/*


FROM python:3

RUN pip3 install pocsuite3 paramiko websockets pysnmp PySocks requests requests-toolbelt urllib3 -i https://mirrors.aliyun.com/pypi/simple/ && rm -rf /usr/local/lib/python3.9/site-packages/pocsuite3/pocs/*
# COPY poc1/ /usr/local/lib/python3.9/site-packages/pocsuite3/pocs/
COPY poc2/ /usr/local/lib/python3.9/site-packages/pocsuite3/pocs/
COPY poc3/pocs/ /usr/local/lib/python3.9/site-packages/pocsuite3/pocs/

CMD [ "pocsuite" ]