FROM debian

MAINTAINER Hatem Jaber <hatem@7079.net>

ENV SPHINX_VERSION=2.2.10-release

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -yqq\
    build-essential\
    wget\
    curl\
    mysql-client\
    libmysql++-dev\
    libmysqlclient15-dev\
    checkinstall

RUN wget http://sphinxsearch.com/files/sphinx-${SPHINX_VERSION}.tar.gz && tar xzvf sphinx-${SPHINX_VERSION}.tar.gz && rm sphinx-${SPHINX_VERSION}.tar.gz

RUN cd sphinx-${SPHINX_VERSION} && ./configure --prefix=/usr/local/sphinx --with-mysql

EXPOSE 9306 9312

RUN cd sphinx-${SPHINX_VERSION} && make

RUN cd sphinx-${SPHINX_VERSION} && make install

RUN rm -rf sphinx-${SPHINX_VERSION}
