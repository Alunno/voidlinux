#!/bin/bash

set -eu -o pipefail

sudo -n true
test $? -eq 0 || exit 1 "Para executar este script precisa privilégios de sudo!"

echo Instalando programas pós-instalação
while read -r p ; do sudo xbps-install -y $p ; done < <(cat << "EOF"
	libreoffice-i18n-pt-BR
	libreoffice
	firefox
	firefox-i18n-pt-BR
	aspell-pt_BR
	void-repo-nonfree
	epson-inkjet-printer-escpr
	noto-fonts-emoji
	noto-fonts-ttf
	noto-fonts-ttf-extra
	ttf-ubuntu-font-family
	nerd-fonts
	nerd-fonts-ttf
	ttf-opensans
	curl
	wget
	git
	xz
	unzip
	zip
	vim
	gptfdisk
	xtools
	mtools
	mlocate
	ntfs-3g
	fuse-exfat
	bash-completion
	linux-headers
	gtksourceview4
	ffmpeg
	mesa-vdpau
	mesa-vaapi
	autoconf
	automake
	bison
	m4
	make
	libtool
	flex
	meson
	ninja
	optipng
	sassc
	xorg
	conky
	yt-dlp
	youtube-dl
	python3-pip
	lightdm
	budgie-desktop
	budgie-control-center
	budgie-desktop-view
	budgie-screensaver
	fragments
	NetworkManager
	NetworkManager-openvpn
	NetworkManager-openconnect
	NetworkManager-vpnc
	NetworkManager-l2tp
	pulseaudio
	pulseaudio-utils
	pulsemixer
	alsa-plugins-pulseaudio
	bluez
	cups
	cups-pk-helper
	cups-filters
	tlp
	tlp-rdw
	powertop
	foomatic-db
	foomatic-db-engine
	zsh
	seahorse
	lollypop
	zip
	unzip
	unrar
	p7zip
	lzop
	neofetch
	openssh
	gst-plugins-bad1
	gst-plugins-ugly1
	gst-plugins-good1
	gst-plugins-base1
	smbclient
	nfs-utils
	libnfs
	base-devel
	ntp
	xdg-desktop-portal
	xdg-desktop-portal-gtk
	xdg-user-dirs
	xdg-user-dirs-gtk
	xdg-utils
	
EOF
)

echo pós-instalação efetuado com exito.
echo instalação inicia em 5 segundos...
echo or
echo hit Ctrl+C para cancelar
echo -e "\n"
sleep 6
sudo xbps-remove -F gnome-weathers gnome-clocks gnome-maps gnome-characters gnome-music gnome-contacts
sleep 6
xdg-user-dirs-update
sleep 6
sudo xbps-install -Suv
sleep 6
quit
