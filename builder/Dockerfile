FROM builder:local AS builder

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean

USER aros

RUN cd /aros/src \
    && git pull --depth 1 \
    || git clone --depth 1 \
        https://github.com/aros-development-team/AROS.git /aros/src

RUN mkdir -p /aros/build \
    && cd /aros/build \
    && /aros/src/configure --target=amiga-m68k \
    && echo quiet = on >> $HOME/.wgetrc \
    && make -s sdk
