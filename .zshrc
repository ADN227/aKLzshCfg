# Path to your oh-my-zsh installation.
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export ZSH="/home/akey/.oh-my-zsh"
ZSH_THEME="aktheme"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Arduino aliases
alias arduino="sudo arduino-cli"
alias Arduino="clear ; sudo-arduino"

alias icompile="arduino compile --fqbn"
alias iupdate="arduino upload --fbqn"
alias iport="sudo screen"

alias iesp8266="esp8266:esp8266:nodemcuv2"
alias iesp32="esp32:esp32:esp32"
alias iesp32cam="esp32:esp32:esp32cam"
alias imega="arduino:avr:mega"
alias iuno="arduino:avr:uno"

# scripts
alias ardillas="python ~/Documentos/Betas/python/ino.py"
alias bspwm="startx"
alias desktop="kioclient exec "

# app installer
alias All="paru -Q"
alias Info="paru -Qi"
alias Install="paru -S --noconfirm"
alias Installed="paru -Q | grep"
alias Search="yay -s"
alias Uninstall="paru -R"
alias Update="paru -Syyu"
alias Purge="sudo paru -Scc"

alias Npm="sudo npm"

# apps
alias Apache-on="sudo systemctl start httpd.service"
alias Apache-off="sudo systemctl stop httpd.service"
alias chrome="google-chrome-stable"
alias files="ranger"
alias Files="sudo ranger"
alias ll="exa -l"
alias neofetch="neofetch --ascii ~/.config/neofetch/arch"
alias nf="neofetch --ascii ~/.config/neofetch/arch | lolcat"
alias clean="clear ; nf"
alias play="mpg123"
alias sci-cli="echo exec \(\'~/...\', -1\) ; scilab-cli"
alias sci-exe="scilab-cli -f"

# editor
alias edit="nvim"
alias Edit="sudo nvim"
alias new="nvim"
alias Neovim="sudo nano"
alias vim="nano"

# tools
alias Df="df -h | grep S. ; df -h | grep /dev/nvme"
alias disk="lsblk"
alias screens="xrandr | grep ' connected'"
alias xev="xev | grep 'state 0x0'"
alias utar="tar -xf"

# GRUB
alias Edit-grub="sudo nvim /etc/default/grub"
alias Update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# extras
alias logout="pkill -u"
alias wallpaper="feh --bg-fill"


if [ $(tty | grep /dev/tty) ];
then
	clear ; neofetch
elif [ $(pgrep alacritty | wc -l) -le 1 ];
then
	neofetch # ; zsh ~/.config/qtile/autostart.sh
fi
