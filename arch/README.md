# NOT FINISHED

## ARCH XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Arch Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Arch:
```
proot-distro install archlinux
proot-distro login archlinux
```
In Arch Shell update its packages:
```
pacman -Syu
```
Install xfce4 and additional packages:
```
pacman -S xfce4 xfce4-goodies tumbler engrampa ristretto parole sudo
```
Install a browser to access internet:
```
pacman -S chromium
```
```
pacman -S firefox
```
Make an user to access the desktop:
```
useradd -m <username>
```
Set a password for your user:
```
passwd <username>
```
Give sudo access to your user:
```
nano /etc/sudoers
```
Scroll and paste it under (root ALL=(ALL:ALL) ALL):
```
<username> ALL=(ALL:ALL) ALL
```
To save and exit press CTRL - X - Y - ENTER.

Arch linux dont have their own/default xfce theme. So i suggest a theme to use instead of the default xfce theme(optional):
```
pacman -S matcha-gtk-theme papirus-icon-theme
```
<details>
<summary>TERMUX X11 DEBUG</summary>
  
Execute ```exit``` until you appear in Termux Shell.
Download the Arch Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/arch/arch-xfce.sh
```
```
nano arch-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your username you created in Arch Shell. CTRL - X - Y - ENTER.
```
chmod +x arch-xfce.sh
```
Start Manjaro desktop with: 
```
./arch-xfce.sh
```

</details>
<details>
<summary>VNC DEBUG</summary>

Make sure your in Arch Shell and execute this command:
```
sudo pacman -S tigervnc
```
Set a password for the vnc connection:
```
vncpasswd
```
Start vncserver:
```
mkdir -p ~/.vnc
echo "#!/bin/bash" > ~/.vnc/xstartup
echo "startxfce4 &" >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
```
To run vnc In Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/arch/arch-xfce-vnc.sh
```
Change ```<username>``` line 6 to your created user:
```
nano arch-xfce-vnc.sh
```
CTRL - X - Y - ENTER
```
chmod +x arch-xfce-vnc.sh
```
```
./arch-xfce-vnc.sh
```
Open RealVNC Viewer and connect to the screen with the ip 
```
localhost:1
```
</details>
