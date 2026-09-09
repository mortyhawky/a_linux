#### 03time.md

```bash
ln -fsv /usr/share/zoneinfo/Europe/Oslo /etc/localtime && ls -la --color /etc/localtime
hwclock --help
hwclock --systohc
```
This command assumes the hardware clock is set to UTC. 
See ```System time#Time standard``` for details.
