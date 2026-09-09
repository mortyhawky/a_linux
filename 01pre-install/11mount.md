#### Mount the file systmes

```
umount /a

mount --types ext4 /dev/nvme0n1p5 --mkdir /mnt      --onlyonce
mount --tyeps ext4 /dev/nvme0n1p6 --mkdir /mnt/home --onlyonce
mount --types vfat /dev/nvme0n1p1 --mkdir /mnt/boot --onlyonce

mount --types exfat /dev/sda3     --mkdir /mnt/a    --onlyonce
lsblk -f
```
