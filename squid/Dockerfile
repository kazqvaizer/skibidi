# 2. Dockerfile for Squid (in ./squid-proxy directory)
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install squid and SQLite-related auth packages
RUN apt-get update \
    && apt-get install -y squid apache2-utils sqlite3 libdbd-sqlite3-perl libauthen-simple-passwd-perl \
    && rm -rf /var/lib/apt/lists/*

# Copy Squid config
COPY squid.conf /etc/squid/squid.conf

# Expose proxy port
EXPOSE 3128

# Mount shared volume for auth DB
VOLUME ["/etc/squid/auth"]

# Start Squid
CMD ["squid", "-N", "-d", "1"]

