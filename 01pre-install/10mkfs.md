#### mkfs.md

```
root="/dev/nvme0n1p5"; rootLabel="ROOT" &&\
yes | mkfs.ext4 $root -L $rootLabel && lsblk -f
```

```
home="/dev/nvme0n1p6"; homeLabel="HOME" &&
yes | mkfs.ext4 $home -L $homeLabel && lsblk -f
