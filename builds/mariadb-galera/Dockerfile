FROM debian:jessie

MAINTAINER Hatem Jaber <hatem@7079.net>

RUN apt-get update -qq\
    && DEBIAN_FRONTEND=noninteractive apt-get install -yqq\
    python-software-properties\
    software-properties-common

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db\
    && add-apt-repository 'deb http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.1/debian jessie main'

RUN apt-get update -qq\
    && DEBIAN_FRONTEND=noninteractive apt-get install -yqq\
    mariadb-client\
    mariadb-server-10.1\
    galera-3

VOLUME /var/lib/mysql
VOLUME /etc/mysql/conf.d

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3306
