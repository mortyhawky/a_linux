#### 04localization.md

```bash
sudo nvim /etc/locale.gen
sudo locale-gen
```

```bash
sudo nvim /etc/locale.conf
  LANG=en_US.UTF-8
  LC_COLLATE=C
  LC_MESSAGES=no
```

```bash
cp -v /a/linux/arch/no-custom.map /usr/share/kbd/keymaps/i386/qwerty/no-custom.map

sudo nvim /etc/vconsole.conf
  KEYMAP=no-custom

```

```bash
watch cat /etc/vconsole.conf
localectl set-keymap no-custom --no-convert
```
