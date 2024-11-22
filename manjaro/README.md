## MANJARO-XFCE
![Screenshot_2024-11-21_08-03-21](https://github.com/user-attachments/assets/762326c2-71d5-4dd9-9a12-a056a02fcd66)

---
Info: (~ $) is Termux Shell, ([root@localhost ~]#) is Manjaro Shell

Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Manjaro:
```
proot-distro install manjaro
proot-distro login manjaro
```
In Manjaro Shell update its packages:
```
pacman -Syu
```
Fix a problem:
```
nano /etc/pacman.conf
```
Scroll and change SigLevel value to Never:
```
SigLevel = Never
```
To save and exit press CTRL - X - Y - Enter.

Install xfce4 and additional packages:
```
pacman -S xfce4 xfce4-goodies tumbler engrampa git sudo
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
CTRL - X - Y - ENTER.

Login to your user:
```
su - <username>
```
Install Manjaro default xfce theme:
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
mv manjaro-xfce-settings/skel/.config /home/<username>/
```
Install the startup file to start Manjaro
