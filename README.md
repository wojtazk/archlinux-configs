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

## Fonts
### System
- [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
- https://archlinux.org/packages/extra/any/fira-sans/

### Terminal
- [GeistMono Nerd Font](https://www.nerdfonts.com/)
- https://archlinux.org/packages/extra/any/otf-geist-mono-nerd/
