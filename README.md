Not redy yet!!!

```pkg update && pkg upgrade```
```pkg install x11-repo``` 
```pkg install proot-distro termux-x11 wget pulseaudio```
```proot-distro install manjaro```
```proot-distro login manjaro```
```pacman -Syu```
```nano /etc/pacman.conf```
```SigLevel = Never```
CTRL - X - Y
```pacman -S sudo git xfce4 xfce4-goodies tumbler engrampa```
```useradd -m <username>```
```nano /etc/sudoers```
```<username> ALL=(ALL:ALL) ALL```
```passwd <username>```
```wget https://raw.githubusercontent.com/PrinceParshia/manjaro-xfce-android/refs/heads/main/manjaro-xfce.sh```
```nano manjaro-xfce.sh```
Change <username> to the username u created in manjaro shell
```chmod +x manjaro-xfce.sh```
```./manjaro-xfce.sh```
