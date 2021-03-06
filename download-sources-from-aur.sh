#!/bin/sh
set -ex

if [ -n "$1" ]
then
	pkgbase=$1
else
	pkgbase=$(realpath .)
	pkgbase=$(basename "${pkgbase}")
fi
wget -O - "https://aur.archlinux.org/cgit/aur.git/snapshot/${pkgbase}.tar.gz" | tar zxvf - --strip-components=1
