#!/bin/bash
# Atualizar o Sistema
echo "Iniciando instalação de complementos do voidlinux."
sleep6
echo "Atualizar o Sistema"
sudo xbps-install -Suv
sleep6
echo "Instalar Repositorios non-free, fonts e impressoras"
sudo xbps-install -Rs void-repo-nonfree epson-inkjet-printer-escpr noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra ttf-ubuntu-font-family nerd-fonts nerd-fonts-ttf ttf-opensans
sleep6
echo "Instalar pacotes essenciais"
sudo xbps-install -S curl wget git xz unzip zip vim gptfdisk xtools mtools mlocate ntfs-3g fuse-exfat bash-completion linux-headers gtksourceview4 ffmpeg mesa-vdpau mesa-vaapi autoconf automake bison m4 make libtool flex meson ninja optipng sassc xorg conky yt-dlp youtube-dl python3-pip gdm gnome gnome-browser-connector gnome-connections fragments NetworkManager NetworkManager-openvpn NetworkManager-openconnect NetworkManager-vpnc NetworkManager-l2tp pulseaudio pulseaudio-utils pulsemixer alsa-plugins-pulseaudio bluez cups cups-pk-helper cups-filters tlp tlp-rdw powertop foomatic-db foomatic-db-engine libreoffice libreoffice-i18n-pt-BR firefox firefox-i18n-pt-BR zsh seahorse lollypop zip unzip unrar p7zip lzop neofetch openssh gst-plugins-bad1 gst-plugins-ugly1 gst-plugins-good1 gst-plugins-base1 smbclient nfs-utils libnfs ntp zsh yaru smbclient gvfs-smb fuse-usmb gvfs-smb gvfs smbnetfs
sleep6
echo "Instalando estrutura de diretorios"
sudo xbps-install -Rs xdg-desktop-portal xdg-desktop-portal-gtk xdg-user-dirs xdg-user-dirs-gtk xdg-utils
sleep6
echo "Atualizar diretorio home"
xdg-user-dirs-update
sleep6
echo "Instalação suporte ao flatpak"
sudo xbps-install -S flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sleep6
# oh my zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# oh my zsh plugins
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

echo "Removendo apps do gnome"
sudo xbps-remove -F gnome-weather gnome-clocks gnome-maps gnome-characters gnome-music gnome-contacts
sleep6
echo "Instalações concluidas com exito!!!"

