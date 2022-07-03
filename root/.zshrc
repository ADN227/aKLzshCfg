export ZSH="/root/.oh-my-zsh"

ZSH_THEME="aktheme"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias Apacheon="systemctl start httpd.service"
alias Apacheoff="systemctl stop httpd.service"
alias arduino="arduino-cli"
alias arduino-update="mkdir trash ; cd trash ; curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh ; mv bin/arduino-cli /usr/bin/arduino-cli ; cd .. ; rm -rf trash"
alias clean="clear ; nf"
alias bspwm="startx"
alias compileEsp="arduino-cli compile --fqbn esp8266:esp8266:nodemcuv2"
alias compileMega="arduino-cli compile --fqbn arduino:avr:mega"
alias compileUno="arduino-cli compile --fqbn arduino:avr:uno"
alias Df="df -h | grep S. ; df -h | grep /dev/sd"
alias disk="lsblk"
alias edit="nvim"
alias editGRUB="nvim /etc/default/grub"
alias files="ranger"
alias Info="paru -Qi"
alias Install="paru -S --noconfirm"
alias Installed="paru -Q | grep"
alias logout="pkill -u root"
alias new="touch"
alias neofetch="neofetch --ascii ~/Documentos/arch"
alias nf="neofetch --ascii ~/Documentos/arch | lolcat"
alias Passwords="python ~/Documentos/Betas/python/Cry.py"
alias parulist="paru -Q"
alias Purge="paru -Scc"
alias screens="xrandr | grep ' connected'"
alias Screens="python ~/Documentos/Betas/python/pantallas.py"
alias Search="yay -s"
alias play="mpg123"
alias scilab="echo exec \(\'~/...\', -1\) ; scilab-cli"
alias Uninstall="paru -R"
alias Update="mv /usr/share/applications/ /usr/share/applications_ ; paru -Syyu ; rm -r /usr/share/applications ; mv /usr/share/applications_ /usr/share/applications"
alias UpdateGRUB="grub-mkconfig -o /boot/grub/grub.cfg"
alias updateEsp="arduino-cli upload -p /dev/ttyUSB0 --fqbn esp8266:esp8266:nodemcuv2"
alias updateMega="arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:mega"
#alias updateuno="arduino-cli upload -p /dev/ttyACM1 --fqbn arduino:avr:uno"
alias utar="tar -xf"
alias vim="nano"
alias wallpaper="feh --bg-fill"
alias xev="xev | grep 'state 0x0'"

if [ $(tty | grep /dev/tty) ];
then
	clear ; neofetch
elif [ $(pgrep alacritty | wc -l) -le 1 ];
then
	nf
fi
