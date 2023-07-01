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
alias serial-port="sudo screen"
ino-compile() {
	board=$1
	sketch=$2
	if [[ $board == "" || $sketch == "" ]]; then
		echo "Error: es necesario especificar la placa y el sketch"
	elif [[ $board == "esp8266" ]]; then
		arduino compile --fqbn esp8266:esp8266:nodemcuv2 -p $sketch
	elif [[ $board == "esp32" ]]; then
		arduino compile --fqbn esp32:esp32:esp32 $sketch
	elif [[ $board == "esp32cam" ]]; then
		arduino compile --fqbn esp32:esp32:esp32cam $sketch
	elif [[ $board == "mega" ]]; then
		arduino compile --fqbn arduino:avr:mega $sketch
	elif [[ $board == "uno" ]]; then
		arduino compile --fqbn arduino:avr:uno $sketch
	else
		echo "Error: placa no registrada"
	fi
}
ino-update() {
	bord=$1
	port=$2
	sketch=$3
	if [[ $board == "" || $port == "" || $sketch == "" ]]; then
		echo "Error: es necesario especificar la placa, el puerto y el sketch"
	elif [[ $board == "esp8266" ]]; then
		arduino upload --fqbn esp8266:esp8266:nodemcuv2 -p $port $sketch
	elif [[ $board == "esp32" ]]; then
		arduino upload --fqbn esp32:esp32:esp32 -p $port $sketch
	elif [[ $board == "esp32cam" ]]; then
		arduino upload --fqbn esp32:esp32:esp32cam -p $port $sketch
	elif [[ $board == "mega" ]]; then
		arduino upload --fqbn arduino:avr:mega -p $port $sketch
	elif [[ $board == "uno" ]]; then
		arduino upload --fqbn arduino:avr:uno -p $port $sketch
	else
		echo "Error: placa no registrada"
	fi
}

# scripts
alias ardillas="python ~/Documentos/Betas/python/ino.py"
alias bspwm="startx"
alias desktop="kioclient exec "

# app installer
archi() {
	option=$1
	pack=$2
	if [[ $option == "" ]]; then
		neofetch
	elif [[ $option == "info" && pack != "" ]]; then
		pacman -Qi $pack
	elif [[ $option == "install" && pack != "" ]]; then
		paru -S --noconfirm $pack
	elif [[ $option == "installed" && pack != "" ]]; then
		pacman -Q | grep $pack
	elif [[ $option == "search" && pack != "" ]]; then
		yay -s $pack
	elif [[ $option == "uninstall" && pack != "" ]]; then
		paru -R $pack
	elif [[ $option == "update" ]]; then
		paru -Syyu
	elif [[ $option == "purge" ]]; then
		sudo paru -Scc
	else
		echo "Error: opción no registrada"
	fi
}
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
