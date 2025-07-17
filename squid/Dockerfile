FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y squid-openssl libdbd-sqlite3-perl \
    && rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3129

VOLUME ["/etc/squid/auth"]

CMD ["squid", "-N", "-d", "1"]

