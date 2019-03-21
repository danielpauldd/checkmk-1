FROM debian:8

SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
    apache2 \
    apache2-threaded-dev \
    build-essential \
    dietlibc-dev \
    dnsutils \
    dpatch \
    flex \
    gettext \
    git-buildpackage \
    libboost-all-dev \
    libcloog-ppl1 \
    libcurl4-openssl-dev \
    libdbi-dev \
    libevent-dev \
    libffi-dev \
    libfreeradius-client-dev \
    libgd-dev \
    libglib2.0-dev \
    libgnutls28-dev \
    libgsf-1-dev \
    libldap2-dev \
    libltdl-dev \
    libmcrypt-dev \
    libmysqlclient15-dev \
    libncurses5-dev \
    libpango1.0-dev \
    libpcap-dev \
    libperl-dev \
    libpq-dev \
    libreadline6-dev \
    librrd-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    openssh-client \
    patch \
    rpcbind \
    smbclient \
    texinfo \
    tk-dev \
    uuid-dev \
    && rm -rf /var/lib/apt/lists/*

COPY bw-build-gnu-toolchain.sh /usr/sbin
RUN bw-build-gnu-toolchain.sh -b
RUN mv /usr/bin/gcc /usr/bin/gcc-old \
    && ln -s /usr/local/bin/gcc-8 /usr/local/bin/gcc \
    && ln -s /usr/local/bin/gcc-8 /usr/local/bin/cc