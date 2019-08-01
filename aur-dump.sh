#!/bin/sh

echo "Fetching list..."
pkgs=$(curl https://aur.archlinux.org/packages.gz | gunzip | tail -n +2)

echo "Creating dump directory..."
mkdir -p dump

echo "Cloning repositories..."
for pkg in $pkgs
do
    git clone --depth 1 "https://aur.archlinux.org/$pkg.git" "dump/$pkg"
done

echo "Done"
