Not finished!!!

## UBUNTU
---
#### NOTE
* ~ $ is Termux Shell.
* root@localhost:~# is Ubuntu Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Ubuntu:
```
proot-distro install ubuntu
proot-distro login ubuntu
```
In Ubuntu Shell update its packages:
```
apt update && apt upgrade
```
Install Ubuntu Desktop Environment and other packages:
```
apt install ubuntu-desktop sudo
```
