#### fdisk.md

```
fdisk -l /dev/nvme0n1
lsblk -o NAME,SIZE,LOG-SEC,PHY-SEC,MODEL

NAME     SIZE LOG-SEC PHY-SEC MODEL
loop0 1018.8M     512     512
sda       52G     512     512 VBOX HARDDISK
sr0      1.5G    2048    2048 VBOX CD-ROM
r
```



Device             Start       End   Sectors  Size Type
/dev/nvme0n1p1      2048   4098047   4096000    2G EFI System
/dev/nvme0n1p2   4098048   4130815     32768   16M Microsoft reserved
/dev/nvme0n1p3   4130816 170037247 165906432 79.1G Microsoft basic data
/dev/nvme0n1p4 248111104 250068991   1957888  956M Windows recovery environment
/dev/nvme0n1p5 170037248 230854655  60817408   29G Linux root (x86-64)
/dev/nvme0n1p6 230854656 248111103  17256448  8.2G Linux home


sudo e2label device [ volume-label ]

e2label will display or change the volume label on the 
ext2, ext3, or ext4 file system located on device.
volume label is the same as LABEL listed with lsblk -o LABEL

```bash examples
sudo e2label /dev/sda
```

