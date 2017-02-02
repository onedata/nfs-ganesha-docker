FROM centos:7
MAINTAINER Marcel Wysocki, mwysocki@redhat.com

EXPOSE 2049

RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
RUN yum install -y nfs-ganesha nfs-ganesha-vfs && yum -y clean all
RUN mkdir -p /exports && chmod 777 /exports

ADD vfs.conf /vfs.conf
VOLUME /var/run

ENTRYPOINT ["ganesha.nfsd", "-F", "-f", "/vfs.conf"]
