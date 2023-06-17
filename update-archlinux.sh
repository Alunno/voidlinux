#!/bin/bash
# Instalação de complementos no archlinux #
sleep 6
# Instalação de pacotes de modulos #
sleep 3
yay -S pamac build mkinitcpio-firmware conky-lua-nv lsb-release zsh gnome-browser-connector
# Alteração do shell para o zsh #
sleep 3
chsh -s /bin/zsh
# Instalação de pacotes de oh-my-zsh #
sleep 3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Instalação de plugins oh-my-zsh #
sleep 3
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
# Instalação efetuado com exito!!! #
sleep 3
# Aproveite a instalação... #
exit

