#### 1.1 Acquire an installation image
- [Download](https://archlinux.org/download)

Prepare environment
```bash
export ARCH_VERSION="$(date +%Y.%m).01"\
&& echo $ARCH_VERSION

# using ls
cd /a/linux/arch/01pre-install/ && ls -AGhlv
# using eza
cd /a/linux/arch/01pre-install/ && ll

rm -frv arch*iso* *sums.txt *.pgp ; ls -AGhlv
rm -frv arch*iso* *sums.txt *.pgp ; ll

sudo pacman -S wget xclip --needed
grep -i --color clipboard $XDG_CONFIG_HOME/nvim/lua/phaeno/options.lua
grep -i --color clipboard $XDG_CONFIG_HOME/nvim/lua/morty/options.lua
```

ctrl+n to toggle numbers in nvim
Download iso and verification data
```bash
wget "https://mirror.archlinux.no/iso/${ARCH_VERSION}/\
archlinux-${ARCH_VERSION}-x86_64.iso.sig"

wget https://archlinux.org/iso/$ARCH_VERSION/sha256sums.txt && l
wget https://archlinux.org/iso/$ARCH_VERSION/b2sums.txt     && l

wget https://mirror.neuf.no/archlinux/iso/\
2026.07.01/archlinux-$ARCH_VERSION-x86_64.iso     && l
```

Or simply run the script:
01-download-iso.sh
