### Select the mirrors

Ctrl-n to toggle numbers in vim/nvim for copy mode in tmux.
```bash
watch cat /etc/pacman.d/mirrorlist
```


```bash
reflector --help
man reflector

sudo reflector --verbose \
    --country Norway,Sweden,Denmark,Finland,Germany \
    --age 12 \
    --protocol https \
    --sort rate \
    --number 15 \
    --save /etc/pacman.d/mirrorlist

bat /etc/pacman.d/mirrorlist
```
