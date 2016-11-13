#!/bin/bash

function install() {
   mkdir /tmp/$2
   wget $1 -O /tmp/$2/PKGBUILD
   cd /tmp/$2
   makepkg
   sudo pacman -U "/tmp/$2/$2*.pkg.tar.gz"
}

pacman -S yajl fakeroot
install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=package-query' 'package-query'
install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yaourt' 'yaourt'
