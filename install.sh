#!/bin/bash
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
sudo echo "defaultyes=True" >> /etc/dnf/dnf.conf
echo "Configured DNF"
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
echo "RPM Fusion added"
sudo dnf copr enable kwizart/fedy -y
sudo dnf install mpv alacritty bspwm sxhkd arandr feh polybar picom lxappearance fedy -y
echo "Installed programs"
cp -r ~/dotfiles/.config ~/
echo "Copied configs, everything is done!"