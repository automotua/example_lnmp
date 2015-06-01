FROM centos
MAINTAINER adam.junqiang.li@gmail.com

RUN yum -y update && yum install -y epel-release
RUN yum install -y nginx

RUN yum install -y wget && wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
RUN rpm -ivh mysql-community-release-el7-5.noarch.rpm
RUN yum install -y mysql-server

CMD ["/bin/bash"]
