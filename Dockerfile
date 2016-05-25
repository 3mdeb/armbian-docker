FROM debian
RUN apt-get update && apt-get install -y \
  git \
  ntpd \
  ca-certificates \
  binfmt-support \
  gcc-arm-linux-gnueabihfa \
  gcc-arm-linux-gnueabi \
  gcc-aarch64-linux-gnu
