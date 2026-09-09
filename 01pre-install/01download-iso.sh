#!/usr/bin/env bash
printf "*** Download latest iso *** \n\n"
export ARCH_VERSION="$(date +%Y.%m).01"
printf "ARCH_VERSION = '$ARCH_VERSION' \n"

cd /a/linux/arch/01pre-install/ &&\
    rm -frv arch*iso* *sums.txt *.pgp index.html*

sudo pacman -S wget xclip sequoia --needed

curl -O https://archlinux.org/iso/release-key.pgp
wget "https://mirror.archlinux.no/iso/${ARCH_VERSION}/\
archlinux-${ARCH_VERSION}-x86_64.iso.sig"
wget "https://archlinux.org/iso/$ARCH_VERSION/sha256sums.txt"
wget "https://archlinux.org/iso/$ARCH_VERSION/b2sums.txt"

wget "https://mirror.neuf.no/archlinux/iso/\
${ARCH_VERSION}/archlinux-${ARCH_VERSION}-x86_64.iso"


ls -AGhlv --color
