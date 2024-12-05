# NOT FINISHED

## VOID XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* bash-*.*# is Void Shell.
---
## MAIN STEPS
Open Termux, install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro wget pulseaudio
```
Install Manjaro:
```
proot-distro install void
proot-distro login void
```
Update Void packages:
```
xbps-install -u xbps
```
```
xbps-install -Su
```
Download xfce and other required packages:
```
xbps-install -S xfce4 xfce4-goodies sudo
```
