# Setup Memcached on CentOS 6
# Memcached is part of EPEL Repository

FROM centos
MAINTAINER Jete O'Keeffe <https://github.com/jeteokeeffe/docker-centos-memcached>

# Setup Memcached
RUM rpm -Uvh http://mirror.metrocast.net/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum update -y
RUN yum install -y memcached

# Port to expose *outside* the container
EXPOSE 11211

# User to run memcached as
USER memcached

# Service to run
ENTRYPOINT ["/usr/bin/memcached"]
