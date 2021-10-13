ARG VARIANT="hirsute"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
RUN apt-get update \ 
    && apt-get install -y vim build-essential kmod flex bison bc cpio lz4 \
        libncurses-dev libz3-dev libssl-dev libelf-dev \
    && apt-get install -y --reinstall linux-headers-generic
