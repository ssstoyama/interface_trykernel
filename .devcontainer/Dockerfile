ARG zigv="zig-linux-aarch64-0.11.0-dev.3363+9461ed503"

# Build
FROM debian:bullseye AS builder

ARG zigv

WORKDIR /tmp
RUN apt update && apt install -y \
  curl \
  xz-utils

RUN curl https://ziglang.org/builds/${zigv}.tar.xz \
  | tar -Jxvf -

# Package
FROM debian:11-slim

ARG zigv

COPY --from=builder /tmp/${zigv} /usr/local/bin/${zigv}
RUN ln -s /usr/local/bin/${zigv}/zig /usr/local/bin/zig

RUN apt update && apt install -y \
      git \
      qemu-system-arm \
      vim \
      build-essential \
      gcc-arm-none-eabi \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
