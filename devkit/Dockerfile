FROM builder:local AS builder

USER aros
WORKDIR /aros
RUN mv build/bin . \
    && rm -rf \
        bin/Sources \
        bin/amiga-m68k/Ports \
        bin/linux-x86_64/Ports \
        bin/linux-x86_64/gen \
        build \
    && mkdir build \
    && mv bin build \
    && ln -s crosstools/m68k-aros-gcc \
        build/bin/linux-x86_64/m68k-amiga-aros-gcc \
    && ln -s build/bin/linux-x86_64/tools bin \
    && ln -s build/bin/linux-x86_64/tools/crosstools/share \
    && ln -s build/bin/amiga-m68k/AROS/Developer/include \
    && ln -s build/bin/amiga-m68k/AROS/Developer/lib

FROM ubuntu

RUN apt-get update > /dev/null \
    && dpkg-divert --remove --local /usr/bin/man \
    && apt-get install -y  > /dev/null \
        git \
        make \
        tmux \
        man-db \
    && apt-get clean > /dev/null \
    && rm -rf /var/lib/apt/lists \
    && adduser \
        --home /aros aros --system \
        --uid 10001 --gecos "AROS Amiga-m68k Cross Compiler & SDK" \
    && adduser \
        --home /code --disabled-password \
        --uid 10002 --gecos "Amiga M68K Coder" coder

COPY --from=builder /aros /aros

USER coder
WORKDIR /code
COPY bashrc.sh .bashrc
