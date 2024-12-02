## FEDORA XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Fedora Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Fedora:
```
proot-distro install fedora
proot-distro login fedora
```
In Fedora Shell update its packages:
```
dnf update
```
