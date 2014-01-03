docker-centos-memcached
=======================

Docker Image for running Memcached on CentOS 6



How to build docker container
```bash
docker build -t centos6-memcached github.com/jeteokeeffe/docker-centos-memcached
```
Note: yum update will take time to update the latest changes, you may want to comment that command out.


How to run the docker container in the background
```bash
docker run -d -p 11211:11211 -t centos6-memcached
```
