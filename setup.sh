sudo apt update && sudo apt upgrade
sudo apt install gcc g++ python3 default-jdk default-jre adb fastboot cheese gparted synaptic gnome-chess telegram-desktop gnome-tweaks rhythmbox gimp mysql-server openshot steam nautilus-share ubuntu-restricted-extras git gnome-weather vlc obs-studio virtualbox-qt cpu-checker qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager libreoffice
sudo systemctl enable --now libvirtd
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsuite main' 
sudo apt update 
sudo apt install --install-recommends winehq-stable
flatpak install com.spotify.Client
flatpak install org.libreoffice.Libreoffice
flatpak install com.google.AndroidStudio
sudo add-apt-repository ppa:yann1ck/onedrive
sudo apt-get update
sudo apt install onedrive
sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt update
sudo apt upgrade
