FROM centos:7
MAINTAINER Marcel Wysocki, mwysocki@redhat.com

EXPOSE 2049

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y nfs-ganesha nfs-ganesha-vfs && yum -y clean all

# Exports
RUN mkdir -p /exports && chmod 777 /exports
RUN mkdir -p /e1 && chmod 777 /e1
RUN mkdir -p /e2 && chmod 777 /e2
RUN mkdir -p /e3 && chmod 777 /e3
RUN mkdir -p /e4 && chmod 777 /e4
RUN mkdir -p /e5 && chmod 777 /e5

ADD vfs.conf /vfs.conf
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
VOLUME /var/run

ENTRYPOINT ["/entrypoint.sh"]
