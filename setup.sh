#! /bin/bash
r='\033[0;31m'
g='\033[0;32m'
n='\033[0m'
b='\033[1m'
echo Package names are coloured with green and are bold
sleep 5s
echo Important packages are starred
sleep 10s
echo checking for update
sudo apt update  
echo PRESS y FOR YES and n for NO and press enter if prompted
sleep 10s
sudo apt upgrade
echo -e ${g}${b}ubuntu-restricted-extras*${n} MP3 AND OTHER CODECS REQUIRED TO PLAY AUDIO AND VIDEO
sleep 10s
sudo apt install ubuntu-restricted-extras
echo -e ${g}${b}C compiler${n}
sleep 10s 
sudo apt install gcc
echo -e ${g}${b}C++ compiler${n}
sleep 10s 
sudo apt install g++
echo -e ${g}${b}JAVA compiler${n}
sleep 10s 
sudo apt install default-jdk default-jre
echo -e ${g}${b}MYSQL SERVER${n} --SQL SERVERSIDE
sleep 10s 
sudo apt install mysql-server
echo -e ${g}${b}Gdebi*${n} - A debian package manager required to install softwares
sleep 10s 
sudo apt install gdebi
echo -e ${g}${b}Gparted${n} - A tool for editing partitions
sleep 10s 
sudo apt install gparted
echo -e ${g}${b}Dconf-editor${n} - you will not need it often
sleep 10s 
sudo apt install dconf-editor
echo -e ${g}${b}Virtualbox${n} - A software to run virtual machine
sleep 10s 
sudo apt install virtualbox-qt
echo -e ${g}${b}Git${n} -This is useful to clone/pull github repositories
sleep 10s 
sudo apt install git
echo -e ${g}${b}ADB and Fastboot${n} -This is useful if you deal with custom rom installation in an android phone
sleep 10s  
sudo apt install adb fastboot
echo -e ${g}${b}gnome-maps${n} - A map navigator like google-maps
sleep 10s 
sudo apt install gnome-maps
echo -e ${g}${b}BLENDER${n}
echo An open source video editing software
sleep 10s
sudo apt install blender
echo -e ${g}${b}GIMP${n} = GNU Image Manipulation Program
echo An open source photo-editor like photoshop
sleep 10s
sudo apt install gimp
echo -e ${g}${b}LIBREOFFICE*${n}
echo A software-suite like MS-Office
echo -e ${r}${b}WARNING${n} Some packages may be preinstalled do check before installing
sleep 10s
sudo apt install libreoffice
echo -e ${g}${b}VLC Media Player${n},
sleep 10s
sudo apt install vlc
echo -e ${g}${b}Official Telegram-client${n} -useful for chating
sleep 10s
sudo apt install telegram-desktop
echo -e ${g}${b}OBS Studio${n} - Software useful for screen-recording 
sleep 10s
sudo apt install obs-studio
echo -e ${g}${b}CLOCK APP*${n}
sleep 10s
sudo apt install gnome-clocks
echo -e ${g}${b}WINE${n} - A compability layer that can run windows only files in linux
echo -e ${r}WARNING${n} careless use of this may introduce virus in system, however it is very less likely  
echo do you need this?[y/n]
read response
if [ $response == 'y' ]
then 
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key 
sudo apt-key add winehq.key 
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main' 
sudo apt update 
sudo apt upgrade 
sudo apt install --install-recommends winehq-stable
elif [ $response == 'n' ]
then
echo ABORTED
else 
echo Sorry cannot recognise command , copy the package name if you need it and install it later
sleep 1m 
fi
echo -e ${g}${b}Google chrome browser${n}
echo do you need this?[y/n]
read response
if [ $response == 'y' ]
then  
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb
elif [ $response == 'n' ]
echo ABORTED
else 
echo Sorry cannot recognise command , copy the package name if you need it and install it later
sleep 1m 
fi
echo -e ${g}${b}STEAM client${n} for linux 
sleep 10s
sudo apt install steam
