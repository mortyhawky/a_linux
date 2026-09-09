### localectl

```bash
sudo echo "KEYMAP=/home/m/.config/kbd/no-custom.map.gz" > /etc/vconsole.conf
sudo mkinitcpi -P
reboot
localectl status
```

```bash
localectl status
localectl help
sudo cp -v $XDG_CONFIG_HOME/kbd/no-custom.map.gz /usr/share/kbd/keymaps/i386/qwerty/
localectl set-keymap no-esc --no-convert

localectl set-x11-keymap no pc105 nodeadkeys caps:escape --no-convert
```

```bash
sudo loadkeys no-custom.map.gz && cat -v
    type alt+| and alt+- and check for ^[[25~ and ^[[26~
sudo mkinitcpio -P
```

localectl:
```bash
localectl status
localectl --help
localectl set-keymap no-esc --no-convert
localectl set-x11-keymap no pc105 nodeadkeys caps:escape --no-convert
watch /etc/locale.conf /etc/vconsole.conf
```

Check what keys send
```bash
cat -v
```
