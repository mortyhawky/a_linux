#### Xorg & Bspwm

Minimal package list for Bspwm running on Xorg server:
```bash
sudo pacman -S --needed  \
    xorg-server          \
    xorg-xinit           \        
    bspwm                \
    sxhkd                \
    xterm                \
    rofi
```


Add the following three config files for a minimal setup:
~/.config/sxhkd/sxhkdrc
```bash
# Super + r -> rofi
super + r
    rofi -show drun
super + r
    rofi -modi drun,run -show drun -show-icons
# Terminal (Super + Return)
super + Return
    xterm

# Rofi launcher (Super + r)
super + r
    rofi -show drun

# Close focused window (Super + q)
super + q
    bspc node -c

# Quit bspwm (Super + Shift + q)
super + Shift + q
    bspc quit

# Focus windows (Super + h/j/k/l)
super + h
    bspc node -f west
super + j
    bspc node -f south
super + k
    bspc node -f north
super + l
    bspc node -f east

# Move windows (Super + Shift + h/j/k/l)
super + Shift + h
    bspc node -s west
super + Shift + j
    bspc node -s south
super + Shift + k
    bspc node -s north
super + Shift + l
    bspc node -s east
```

-/.config/bspwm/bspwmrc
```bash
sxhkd &
```

~/.xinitrc
```bash
exec bspwm
```


Additional X software
```
    alacritty
    firefox      
    xclip
    xorg-setxkbmap
    xorg-xmodmap
    xorg-xset
    feh
    picom
    xf86-video-intel
```



Confirm that needed software is installed:
```bash
which              \
    xclip           \
    xinit            \
    alacritty         \
    firefox            \
    xmodmap             \
    xset                 \
    feh                   \
    picom                  \
    sxhkd                   \
    dash                     \
    rofi                      \
    bspwm
```
