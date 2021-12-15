#!/bin/bash
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
sudo echo "defaultyes=True" >> /etc/dnf/dnf.conf

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf copr enable kwizart/fedy
sudo dnf install mpv alacritty bspwm sxhkd arandr feh polybar picom lxappearance fedy -y
cp ~/dotfiles/configs ~/.config/