export PATH=/aros/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export MANPATH=/aros/share/man:/usr/local/share/man:/usr/share/man

export CC=m68k-amiga-aros-gcc
export LD=m68k-amiga-aros-ld

for b in /aros/bin/m68k-amiga-aros-*; do alias ${b##*-}=${b##*/}; done
