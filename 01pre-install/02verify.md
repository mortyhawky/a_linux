#### 1.2 Verify signature
- [ISO PGP](https://archlinux.org/download/#checksums)

```bash
cd /a/linux/arch/01pre-install/ && ls -AGhlv --color
sudo pacman -S wget xclip sequoia --needed
curl -O https://archlinux.org/iso/release-key.pgp && ls -AGhlv --color
# NOT ACTIVE ANYMORE sq --overwrite network wkd search pierre@archlinux.org --output release-key.pgp
sq import release-key.pgp
sq verify --signer-file release-key.pgp --signature-file archlinux-$ARCH_VERSION-x86_64.iso.sig archlinux-$ARCH_VERSION-x86_64.iso
sq verify archlinux-$ARCH_VERSION-x86_64.iso.sig

sq cert export --keyring=release-key.pgp --cert=3E80CA1A8B89F69CBA57D98A76A5EF9054449A5C

sq cert export --keyring=release-key.pgp --cert=4AA4767BBC9C4B1D18AE28B77F2D434B9741E8AC

gpg --auto-key-locate clear,wkd -v --locate-external-key pierre@archlinux.org
gpg --verify archlinux-$ARCH_VERSION-x86_64.iso.sig archlinux-$ARCH_VERSION-x86_64.iso

sudo pacman-key --recv-keys 3E80CA1A8B89F69CBA57D98A76A5EF9054449A5C
sudo pacman-key -v archlinux-$ARCH_VERSION-x86_64.iso.sig
sudo pacman-key --lsign-key 3E80CA1A8B89F69CBA57D98A76A5EF9054449A5C
sudo pacman-key -v archlinux-$ARCH_VERSION-x86_64.iso.sig
```

bash script:
```bash
#!/usr/bin/env bash
set -e

b2sum     --check --ignore-missing b2sums.txt
sha256sum --check --ignore-missing sha256sums.txt

echo "SUCCESS!"
### Create this script with cat LFS style. heredoc ###
```

Run the script to check both b2sum and sha256sum
```bash
./checksums.sh
```
