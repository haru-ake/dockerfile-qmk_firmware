FROM debian:stretch
MAINTAINER HARU Akebono <haru.akebono.11@gmail.com>

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
      build-essential \
      gcc \
      unzip \
      wget \
      zip \
      gcc-avr \
      binutils-avr \
      avr-libc \
      dfu-programmer \
      dfu-util \
      gcc-arm-none-eabi \
      binutils-arm-none-eabi \
      libnewlib-arm-none-eabi \
      git \
      avrdude && \
    apt-get install --no-install-recommends -y \
      ruby \
      rake && \
    rm -rf /var/lib/apt/lists/*

VOLUME /qmk
WORKDIR /qmk

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
