#!/bin/sh

echo "Fetching list..."
pkgs=$(curl https://aur.archlinux.org/packages.gz | gunzip | tail -n +2)

for pkg in $pkgs
do
    echo "$pkg"
done
