FROM centos:8

COPY entry.sh /entry.sh

ENTRYPOINT [ "/entry.sh" ]
