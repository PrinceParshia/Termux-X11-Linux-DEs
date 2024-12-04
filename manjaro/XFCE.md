## MANJARO XFCE
![1000250177](https://github.com/user-attachments/assets/a792198d-7804-41de-ae53-b10025ff483b)

---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Manjaro Shell.
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
proot-distro install manjaro
proot-distro login manjaro
```
Update Manjaro packages:
```
pacman -Syu
```
```
nano /etc/pacman.conf
```
Scroll download and change ```SigLevel``` value to ```Never```:
```
SigLevel = Never
```
Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
<br>
