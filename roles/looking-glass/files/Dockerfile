FROM docker.io/ubuntu:22.04

ENV VERSION="B5.0.1"
ENV WRKDIR="/tmp/build"
VOLUME "/out" 

RUN apt update && apt install tar binutils-dev cmake fonts-dejavu-core libfontconfig-dev gcc g++ pkg-config \
    libegl-dev libgl-dev libgles-dev libspice-protocol-dev nettle-dev libx11-dev libxcursor-dev libxi-dev \ 
    libxinerama-dev libxpresent-dev libxss-dev libxkbcommon-dev libwayland-dev wayland-protocols \
    curl make -y 

RUN mkdir -p $WRKDIR

WORKDIR $WRKDIR

RUN  curl -fsSL https://looking-glass.io/artifact/${VERSION}/source -o "${WRKDIR}/looking-glass-${VERSION}.tar.gz"

RUN tar -xvf "./looking-glass-${VERSION}.tar.gz" &&  rm "./looking-glass-${VERSION}.tar.gz" && cd "./looking-glass-${VERSION}" &&\
    mkdir client/build &&\
    cd client/build &&\
    cmake ../ &&\
    make

