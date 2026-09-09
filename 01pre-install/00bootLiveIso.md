#### Boot The Live Iso Environment

keyboard
```bash
loadkeys no
echo "keycode 58=Escape" > esc.map
loadkeys esc.map
bindkey -v
```

internet
```bash
iwctl station wlan0 connect "103B 5"
        sdbyorgufjuad
ip a
```

tools
```bash
pacman -Sy vifm git w3m --needed
```


mount
```bash
lsblk -f /dev/sda
mount --types exfat /dev/sda3 --mkdir /a --onlyonce

  lsblk -f /dev/sda1
  mount --types exfat /dev/sda1 --mkdir /ventoy --onlyonce
```

cp -v /a/linux/arch/.tmux.conf ~/.tmux.conf
```tmux.conf
set-option -g prefix M-Space

bind-key -Troot M-r source-file ~/.tmux.conf \; display-message "Sourced"

bind-key -Troot M-| split-window -h
bind-key -Troot M-` split-window -h
bind-key -Troot M-- split-window -v
bind-key -Troot M-/ split-window -v

bind-key -Troot M-h select-pane -L
bind-key -Troot M-j select-pane -D
bind-key -Troot M-k select-pane -U
bind-key -Troot M-l select-pane -R

bind-key -Troot M-c copy-mode
bind-key -Troot M-v copy-mode \; send -X begin-selection
bind-key -T copy-mode-vi Escape send -X cancel
bind-key -T copy-mode-vi v send -X begin-selection
bind-key -T copy-mode-vi y send -X copy-selection-and-cancel
bind-key -Troot M-p paste-buffer
```

locale.conf vconsole.conf
```bash
watch cat /etc/locale.conf /etc/vconsole.conf 
localectl status
localectl help
localectl set-locale en_US.UTF-8 && localectl

cp -v /a/linux/arch/no-custom.map /usr/share/kbd/keymaps/i386/qwerty/no-custom.map
localectl set-keymap no-custom --no-convert && localectl

localectl set-x11-keymap no pc105 nodeadkeys caps:escape --no-convert && localectl
```

using tmux with default configurations
```bash
tmux
bindkey -v
ctrl+b+%
bindkey -v
```
