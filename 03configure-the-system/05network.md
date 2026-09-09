#### 05network.md

```bash
echo "arch" > /etc/hostname && cat /etc/hostname
```

```bash
sudo pacman -S --needed iwd iwd-openrc
```

To use iwctl you need to:
```bash
sudo systemctl start iwd systemd-resolved
iwctl station wlan0 connect "103B 5"
      sdbyorgufjuad
```

```bash
sudo mkdir -p /etc/iwd
sudo cp -v /a/linux/arch/etc/iwd/main.conf\
                        /etc/iwd/main.conf &&\
                    cat /etc/iwd/main.conf
```

```bash
sudo cp -v /a/linux/arch/etc/systemd/network/25-wlan.network\
                        /etc/systemd/network/25-wlan.network && \
                    bat /etc/systemd/network/25-wlan.network
```
