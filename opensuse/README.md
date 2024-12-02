## OPENSUSE XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* localhost:~ # is openSUSE Shell.

## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install openSUSE:
```
proot-distro install opensuse
proot-distro login opensuse
```
In openSUSE Shell update its packages:
```
zypper refresh
zypper update
```
Install xfce and other packages:
```
zypper install patterns-openSUSE-xfce
zypper install xfce4 xfce4-goodies
```
