# change default fish greeting
set fish_greeting ""

# aliases
alias ip='ip -color=always'
alias ls='eza --color=always --group-directories-first --icons'
alias update='yay --noconfirm && flatpak update --assumeyes'

if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch --config paleofetch.jsonc
end

# init starhip
starship init fish | source
