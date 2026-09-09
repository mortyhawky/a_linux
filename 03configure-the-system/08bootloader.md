#### 08bootloader.md

Software
```bash
sudo pacman -S --needed \ 
             os-prober   \
             efibootmgr   \ 
             grub
```


```bash
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
sudo nvim /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
```
