# Virtualbox
```bash
sudo pacman -Syu virtualbox virtualbox-host-dkms --needed
pm -Syu linux-headers dkms --needed
sudo dkms autoinstall
sudo depmod -a
sudo modprobe vboxdrv

dkms status
lsmod |grep vbox

VBoxMange list vms
```
