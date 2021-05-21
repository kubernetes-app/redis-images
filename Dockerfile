FROM redis:6.2.3-alpine

COPY conf/redis.conf /usr/local/etc/redis/redis.conf
COPY bin/* /usr/local/bin/

CMD []
