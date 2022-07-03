export ZSH="/home/akey/.oh-my-zsh"

ZSH_THEME="aktheme"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias Apacheon="sudo systemctl start httpd.service"
alias Apacheoff="sudo systemctl stop httpd.service"
alias ardillas="python ~/Documentos/Beatas/python/ino.py"
alias arduino="arduino-cli"
alias clean="clear ; nf"
alias bspwm="startx"
alias compileEsp="sudo arduino-cli compile --fqbn esp8266:esp8266:nodemcuv2"
alias compileMega="sudo arduino-cli compile --fqbn arduino:avr:mega"
alias compileUno="sudo arduino-cli compile --fqbn arduino:avr:uno"
alias Df="df -h | grep S. ; df -h | grep /dev/sd"
alias disk="lsblk"
alias edit="nvim"
alias Edit="sudo nvim"
alias EditGRUB="sudo nvim /etc/default/grub"
alias files="ranger"
alias Files="sudo ranger"
alias Info="paru -Qi"
alias Install="paru -S --noconfirm" 
alias Installed="paru -Q | grep"
alias logout="pkill -u akey"
alias new="touch"
alias neofetch="neofetch --ascii ~/Documentos/arch"
alias nf="neofetch --ascii ~/Documentos/arch | lolcat"
alias Passwords="python ~/Documentos/Betas/python/Cry.py"
alias parulist="paru -Q"
alias Purge="sudo paru -Scc"
alias screens="xrandr | grep ' connected'"
alias Screens="python ~/Documentos/Betas/python/pantallas.py"
alias Search="yay -s"
#alias sudo="su -c"
alias play="mpg123"
alias scilab="echo exec \(\'~/...\', -1\) ; scilab-cli"
alias Uninstall="paru -R"
alias Update="sudo mv /usr/share/applications/ /usr/share/applications_ ; paru -Syyu ; sudo rm -r /usr/share/applications ; sudo mv /usr/share/applications_ /usr/share/applications"
alias UpdateGRUB="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias updateEsp="sudo arduino-cli upload -p /dev/ttyUSB0 --fqbn esp8266:esp8266:nodemcuv2"
alias updateMega="sudo arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:mega"
#alias updateuno="sudo arduino-cli upload -p /dev/ttyACM1 --fqbn arduino:avr:uno"
alias utar="tar -xf"
alias wallpaper="feh --bg-fill"
alias xev="xev | grep 'state 0x0'"

if [ $(tty | grep /dev/tty) ];
then
	clear ; neofetch
elif [ $(pgrep alacritty | wc -l) -le 1 ];
then
	neofetch
fi

