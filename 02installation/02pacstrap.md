#### Install essential packages

```bash
mount --types vfat /dev/nvme0n1p1 --mkdir /mnt/boot --onlyonce
watch ls -la /mnt/boot
rm /mnt/boot/intel-ucode.img && ls -la /mnt/boot
```

```bash
pacstrap -K /mnt\
 base linux linux-firmware sudo sof-firmware intel-ucode\
 iwd vifm bat nvim tmux\
 man-db man-pages texinfo\
 grub efibootmgr os-prober\
 git github-cli\
 w3m \
```

```bash
pm  --sync     \
    --needed    \
    --color=auto \
    ripgrep       \
    xdg-utils      \
    zathura         \
    okular
```
