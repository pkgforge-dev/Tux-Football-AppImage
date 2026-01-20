#!/bin/sh

set -eu

ARCH=$(uname -m)
VERSION=$(pacman -Q tuxfootball | awk '{print $2; exit}')
export ARCH VERSION
export OUTPATH=./dist
export ADD_HOOKS="self-updater.bg.hook"
export UPINFO="gh-releases-zsync|${GITHUB_REPOSITORY%/*}|${GITHUB_REPOSITORY#*/}|latest|*$ARCH.AppImage.zsync"
export ICON=/usr/share/icons/hicolor/128x128/apps/tuxfootball.png
export DESKTOP=/usr/share/applications/tuxfootball.desktop
export DEPLOY_OPENGL=1

# Deploy dependencies
quick-sharun /usr/bin/tuxfootball \
             /usr/lib/libvorbis*

# Turn AppDir into AppImage
quick-sharun --make-appimage
