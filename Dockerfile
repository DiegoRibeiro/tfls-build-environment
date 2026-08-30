FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    g++ \
    patch \
    cmake \
    make \
    libgmp-dev \
    libmysqlclient-dev \
    liblua5.2-dev \
    libboost-system-dev \
 && rm -rf /var/lib/apt/lists/*