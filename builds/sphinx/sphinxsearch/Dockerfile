FROM sphinxsearch:2.2.10

VOLUME /usr/local/sphinx/etc
VOLUME /usr/local/sphinx/var

RUN mkdir -p /sphinx && cd /sphinx && cp -avr /usr/local/sphinx/etc . && cp -avr /usr/local/sphinx/var .

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
