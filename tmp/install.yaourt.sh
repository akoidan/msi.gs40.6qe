#!/bin/bash

function install() {
   mkdir /tmp/$2
   wget $1 -O /tmp/$2/PKGBUILD
   cd /tmp/$2
   makepkg
   sudo pacman -U "$2*.ta.gz"
}

pacman -S yajl
install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=package-query' 'package-query'
install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yaourt' 'yaourt'
