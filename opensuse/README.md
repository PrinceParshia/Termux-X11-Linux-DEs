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
zypper install xfce4-panel xfce4-session xfce4-settings xfce4-appfinder xfce4-terminal xfce4-taskmanager xfce4-notifyd xfce4-power-manager xfce4-screenshooter xfce4-clipman-plugin xfce4-weather-plugin xfce4-battery-plugin xfce4-places-plugin xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin xfce4-netload-plugin xfce4-pulseaudio-plugin xfce4-sensors-plugin xfce4-timer-plugin xfce4-wavelan-plugin xfce4-mount-plugin patterns-openSUSE-xfce
zypper install sudo tumbler engrampa ristretto parole 
```
