# Mi configuracion de ZSH

Tema de shell para zsh y alias para comandos que no se encuentran en la lista de comandos de zsh.

- Tema basado en [robbyrussell](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#robbyrussell)

- Alias (Info, Install, Purge, Uninstall y Update) enfocados a Arch linux

# Aplicaciones recomendadas

- [arduino-cli](https://arduino.github.io/arduino-cli/0.23/getting-started/)

        pacman -S arduino-cli
        mkdir trash
        cd trash
        curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
        mv bin/arduino-cli /usr/bin/arduino-cli
        cd ..
        rm -rf trash

- [feh](https://feh.finalrewind.org/)

        pacman -S feh

- [neofetch](https://github.com/dylanaraps/neofetch)

        pacman -S neofetch

- [neovim](https://neovim.io)

        pacman -S neovim

- [paru](https://github.com/morganamilo/paru)

        yay -S paru-bin

- [xrandr](https://wiki.archlinux.org/title/xrandr)

        pacman -S xorg-xrandr

- [yay](https://aur.archlinux.org/packages/yay-bin)

        pacman -S git
        mkdir trash
        cd trash
        git clone https://aur.archlinux.org/yay-bin.git
        cd yay-bin
        makepkg -si
        cd ...
        rm -rf trash
