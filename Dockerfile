FROM debian:buster

RUN apt-get update \
    && apt-get -yqqf --no-install-recommends install \
        apt-transport-https \
        lsb-release \
        ca-certificates \
        curl \
        libsasl2 \
        sasl2-bin \
        libsasl2-modules \
        mutt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

