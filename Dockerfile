FROM centos:8

RUN yum install -y yum-utils && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    yum install -y docker-ce-cli

COPY entry.sh /entry.sh

ENTRYPOINT [ "/entry.sh" ]
