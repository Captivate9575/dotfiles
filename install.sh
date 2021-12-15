#!/bin/bash
echo "enter the sudo password, please"
read PW
echo $PW | sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo $PW | sudo echo "defaultyes=True" >> /etc/dnf/dnf.conf
echo "Configured DNF"
echo $PW | sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
echo "RPM Fusion added"
echo $PW | sudo dnf copr enable kwizart/fedy -y
echo $PW | sudo dnf install mpv alacritty bspwm sxhkd arandr feh polybar picom lxappearance fedy -y
echo "Installed programs"
#sudo -u $USER cp -r /home/$USER/dotfiles/.config /home/$USER/
cp -r ~/dotfiles/.config ~/
#chmod +x ~/dotfiles/configs.sh
#/dotfiles/./configs.sh
echo "copying dotfiles"
