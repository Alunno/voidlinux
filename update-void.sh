#!/bin/bash
# Atualizar o Sistema
echo "Iniciando instalação de complementos do voidlinux."

sudo xbps-install -Suv

# Repositorios non-free
sudo xbps-install -Rs void-repo-nonfree epson-inkjet-printer-escpr noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra 

# Essenciais
sudo xbps-install curl wget git xz unzip zip vim gptfdisk xtools mtools mlocate ntfs-3g fuse-exfat bash-completion linux-headers gtksourceview4 ffmpeg mesa-vdpau mesa-vaapi autoconf automake bison m4 make libtool flex meson ninja optipng sassc xorg conky yt-dlp youtube-dl python3-pip gdm gnome gnome-browser-connector gnome-connections fragments NetworkManager NetworkManager-openvpn NetworkManager-openconnect NetworkManager-vpnc NetworkManager-l2tp pulseaudio pulseaudio-utils pulsemixer alsa-plugins-pulseaudio bluez cups cups-pk-helper cups-filters tlp tlp-rdw powertop foomatic-db foomatic-db-engine libreoffice libreoffice-i18n-pt-BR firefox firefox-i18n-pt-BR  

# Diretorios HOME
sudo xbps-install -Rs xdg-desktop-portal xdg-desktop-portal-gtk xdg-user-dirs xdg-user-dirs-gtk xdg-utils

echo "Instalações concluidas com exito!!!"

