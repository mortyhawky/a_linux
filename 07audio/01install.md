#### Audio Install

```bash
pm -S pipewire pipewire-pulse wireplumber --needed
systemctl --user enable --now pipewire pipewire-pulse wireplumber
pactl info | grep "Server Name"
wpctl status -n
pactl list cards
```

```bash
sudo pacman -S pipewire pipewire-pulse wireplumber bluez bluez-utils --needed
sudo systemctl enable --now bluetooth
systemctl --user restart pipewire pipewire-pulse wireplumber
bluetoothctl
  power on
  agent on
  default-agent
  scan on
  pair XX:XX:XX.....
  connect XX:XX:XX.......
  trust XX:XX:XX.......
ctrl-d
```

```bash
wpctl status
pm -S pavucontrol --needed
pavucontrol
```


```
JBL headset
      |
     BlueZ
      |
 PipeWire 1.6.8
      |
 WirePlumber
      |
 +-------------+
 |             |
wpctl       pactl/pavucontrol
(native)   (compatibility)
```

```
A good mental model:

Tool	    Talks to	    Use for
wpctl	    PipeWire	    modern control
pactl	    PulseAudio      API → PipeWire	compatibility
pavucontrol	PulseAudio      API → PipeWire	GUI mixer
alsamixer	ALSA hardware	low-level troubleshooting
```
