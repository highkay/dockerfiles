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


FROM centos:7

COPY Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y epel-release && \
    yum makecache fast && \
    yum install -y ansible sshpass rsync git && \
    yum clean all

RUN mkdir -p /workspace

WORKDIR /workspace

COPY ansible.cfg /etc/ansible/

ADD mitogen-0.2.9.tar.gz /var/

CMD [ "ansible-playbook" ]