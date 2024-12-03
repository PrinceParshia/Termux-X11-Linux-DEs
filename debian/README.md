# NOT FINISHED

## DEBIAN XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* root@localhost:~# is Debian Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Debain:
```
proot-distro install debian
proot-distro login debian
```
In Debian Shell update its packages:
```
apt update && apt upgrade
```
