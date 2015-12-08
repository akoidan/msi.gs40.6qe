echo 'uncomment multilib in /etc/pacman.conf'
pacman -S vim mc wifi-menu dialog wpa_supplicant wpa_gui pkgfile dosfstools git gist openssh wget bash-completion yajl core/hdparm core/linux-firmware community/lshw abs
#xorg
pacman -S xf86-video-intel xorg-server xorg-server-utils plasma kde-applications
echo 'MAKEFLAGS="-j5"' > /etc/makepkg.conf
sh /tmp/install.yaourt.sh
echo 'run "abs" cp /tmp/kernel/ to  /var/abs/core/linux and run makepkg'

