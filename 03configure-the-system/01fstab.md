#### 01fstab.md

```bash
genfstab --help
man 8 genfstab

genfstab -L /mnt > /mnt/etc/fstab && cat /mnt/etc/fstab
```

Re-creating the /etc/fstab using LABELS after installation:
```bash
pm -S arch-install-scripts --needed
sudo e2label /dev/sda3 ADMIN     && lsblk -f
sudo e2label /dev/nvme0n1p6 HOME && lsblk -f
sudo e2label /dev/nvme0n1p5 ROOT && lsblk -f
mount -a
reboot
genfstab -L /
genfstab -L /mnt > /mnt/etc/fstab && cat /mnt/etc/fstab
cat /etc/fstab
reboot
```
