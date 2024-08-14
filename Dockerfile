ARG KERNEL_VERSION

FROM linuxkit/kernel:${KERNEL_VERSION} as ksrc
FROM ubuntu:24.04 AS build

WORKDIR /kernel
COPY --from=ksrc /kernel-dev.tar .
RUN tar xf kernel-dev.tar
RUN ln -sn /kernel/usr/src/linux-headers* /kernel/usr/src/linux-headers

WORKDIR /workspace
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    vim \
    bpftrace

ENV BPFTRACE_KERNEL_SOURCE=/kernel/usr/src/linux-headers
