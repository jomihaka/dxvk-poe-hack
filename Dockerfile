FROM ubuntu:18.04

WORKDIR /root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    meson \
    git \
	build-essential \
	ca-certificates \
	software-properties-common \
	wget \
	gpg-agent

RUN dpkg --add-architecture i386 \
    && wget -O- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -\
    && apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' \
    && apt-get install -y --install-recommends winehq-staging \
    && wine --version

RUN add-apt-repository -y ppa:graphics-drivers/ppa \
    && apt-get install -y --no-install-recommends \
        glslang-dev \
        glslang-tools

RUN add-apt-repository -y ppa:mati865/mingw-w64 \
    && apt-get upgrade -y \
    && apt-get install -y mingw-w64

RUN echo 1 | update-alternatives --config x86_64-w64-mingw32-gcc \
    && echo 1 | update-alternatives --config x86_64-w64-mingw32-g++ \
    && echo 1 | update-alternatives --config i686-w64-mingw32-gcc \
    && echo 1 | update-alternatives --config i686-w64-mingw32-g++

COPY pipeline.patch ./pipeline.patch
COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
