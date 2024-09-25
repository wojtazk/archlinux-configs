# My Arch configs

## Systemd-boot
dir: `/boot/loader/`

file: `loader.conf`

### Nvidia Drivers
Add `nvidia-drm.modeset=1` to kernel options in entries in `/boot/loader/entries`


## Starship
dir: `~/.config/`

file: `starship.toml` (stolen from Garuda Linux)


## Fish
dir: `~/.config/fish/`

file: `config.fish`


## Nano
Append to `/etc/nanorc`:
```
# My config
include "/usr/share/nano/*.nanorc"
include "/usr/share/nano/extra/*.nanorc"
set linenumbers
```
