#!/bin/bash

function install() {
   mkdir /tmp/$2
   wget $1 https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=package-query -O /tmp/$2/PKGBUILD
   cd /tmp/$2
   makepkg
   echo 'cd /tmp/$2/; pacman -U packagename'
}

install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=package-query' 'query'
install 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yaourt' 'yaourt'
