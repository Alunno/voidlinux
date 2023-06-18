#!/bin/bash
echo -=-=-=-Instalação de complementos no archlinux -=-=-=-
sleep 6
echo -=-=-=-Instalação de pacotes adicionais e modulos initcpio -=-=-=-
sleep 3
yay -S pamac build mkinitcpio-firmware conky-lua-nv lsb-release zsh gnome-browser-connector aspell-pt pamac-aur fragments testdisk
echo -=-=-=-Alteração do shell-=-=-=-
sleep 3
chsh -s /bin/zsh
echo -=-=-=-Instalação do pacote oh-my-zsh-=-=-=-
sleep 3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -=-=-=-Instalação de plugins zsh-=-=-=- 
sleep 3
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
echo -=-=-=-Instalação de complementos instalado com sucesso...-=-=-=-
sleep 3
echo -=-=-=-Aproveita a instalação-=-=-=-
pause
exit
