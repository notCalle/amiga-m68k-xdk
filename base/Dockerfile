FROM ubuntu

RUN apt-get update > /dev/null \
    && apt-get install -y >/dev/null \
        automake \
        bison \
        flex \
        g++ \
        gawk \
        gcc \
        git \
        libpng-dev \
        make \
        netpbm \
        patch \
        python3 \
        wget \
    && apt-get clean > /dev/null \
    && adduser \
        --home /aros aros --system \
        --uid 10001 --gecos "AROS Amiga-m68k Cross Compiler & SDK" \
