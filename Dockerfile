FROM centos:7
MAINTAINER Marcel Wysocki, mwysocki@redhat.com

RUN dnf install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
RUN dnf install -y nfs-ganesha nfs-ganesha-vfs
RUN mkdir -p /exports
EXPOSE 2049
ADD vfs.conf /vfs.conf
ENTRYPOINT ["ganesha.nfsd", "-F", "-L", "/dev/stdout", "-f", "/vfs.conf"]
