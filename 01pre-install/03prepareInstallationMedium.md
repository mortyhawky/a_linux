### 1.3 Prepare an installation medium

```bash
cd /a/linux/arch/01pre-install/ && ls -AGhlv

lsblk -f /dev/disk/by-id/usb-Samsung_Flash_Drive_0374723060003465-0:0
lsblk -f /dev/disk/by-id/usb-Corsair_Voyager_3.0_0708122DA1A03563-0:0

sudo dd if=archlinux-$ARCH_VERSION-x86_64.iso \
        of=/dev/disk/by-id/usb-Samsung_Flash_Drive_0374723060003465-0\:0 \
        bs=4M status=progress conv=fsync

sudo dd if=archlinux-$ARCH_VERSION-x86_64.iso \
        of=/dev/disk/by-id/usb-Corsair_Voyager_3.0_0708122DA1A03563-0:0 \
        bs=4M status=progress conv=fsync
```
