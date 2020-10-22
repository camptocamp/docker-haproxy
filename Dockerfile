FROM haproxy:2.2.4

RUN set -x \
 && apt-get update \
 && apt-get -y --no-install-recommends --no-install-suggests install \
    socat \
    curl \
    procps \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
