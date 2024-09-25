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
```sh
# My config
include "/usr/share/nano/*.nanorc"
include "/usr/share/nano/extra/*.nanorc"
set linenumbers
```

## YAY
[github.com/Jguer/yay](https://github.com/Jguer/yay)
```sh
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

## Fonts
### System
- [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
