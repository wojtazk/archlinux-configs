# My Arch configs

![terminal screen shot](/terminal.png)


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


## Konsole
dir: `~/.local/share/konsole`

file: `Fish.profile` & `Breeze.colorscheme`


## Nano
Append to `/etc/nanorc`:
```sh
# My config
include "/usr/share/nano/*.nanorc"
include "/usr/share/nano/extra/*.nanorc"
set linenumbers
```


## Pacman
dir: `/etc/`

file: `pacman.conf`

\
Add to `Misc Options`
- `Color`
- `ILoveCandy`

Uncomment `[multilib]` repo (for native steam app to work)
- ```diff
  -   #[multilib]
  -   #Include = /etc/pacman.d/mirrorlist
  
  +   [multilib]
  +   Include = /etc/pacman.d/mirrorlist
  ```


## YAY
[github.com/Jguer/yay](https://github.com/Jguer/yay)
```sh
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```


## Wallpaper
![wallpaper - darkest hour](/DarkestHour/contents/screenshot.jpg)

dir: `/usr/share/wallpapers/DarkestHour`

name: `Darkest Hour`\
author: `Risto Saukonpää`\
license: `LGPLv3`


## Fonts
```shell
sudo pacman -S otf-fira-sans noto-fonts-cjk otf-geist-mono-nerd
```
### System
- [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
  - https://archlinux.org/packages/extra/any/fira-sans/
- [Noto](https://fonts.google.com/noto)
  - https://archlinux.org/packages/extra/any/noto-fonts-cjk/

### Terminal
- [GeistMono Nerd Font](https://www.nerdfonts.com/)
  - https://archlinux.org/packages/extra/any/otf-geist-mono-nerd/

---

## System cleanup
### Look for high disk usage
```shell
sudo du -h --max-depth 1 / | sort -hr
```
```shell
sudo du -h --max-depth 1 /var | sort -hr
```
etc

### Remove unused packages
List unused:
```shell
sudo pacman -Qtdq
```
Remove unused:
```shell
sudo pacman -R $(pacman -Qtdq)
```

### Delete pacman & yay cache
https://wiki.archlinux.org/title/Pacman#Cleaning_the_package_cache

Paccache deletes all cached versions of installed and uninstalled packages, except for the most recent three, by default:
```shell
paccache -r
```

```shell
yay --aur -Sc
```

### Docker
```shell
docker system df
```
```shell
docker system prune -a
```
```shell
docker volume rm $(docker volume ls -q)
```

### Pipenv
```shell
pipenv --clear
```

