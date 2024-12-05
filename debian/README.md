## DEBIAN XFCE
![1000250196](https://github.com/user-attachments/assets/37af313b-d320-4c2d-b90c-47d019a081f6)

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
Install xfce4 and other required packages:
```
apt install xfce4 xfce4-goodies sudo adduser
```
Download a browser to access internet:
```
apt install chromium
```
```
apt install firefox
```
Create an user to access the desktop:
```
adduser <username>
```
Give sudo access to your user:
```
nano /etc/sudoers
```
Scroll and paste it under ```root ALL=(ALL:ALL) ALL```:
```
<username> ALL=(ALL:ALL) ALL
```
Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
<br>
Execute ```exit``` until you reach in Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/debian/debain-xfce.sh
```
```
nano debian-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your user you created in debian shell. Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
```
chmod +x debian-xfce.sh
```
To run the desktop:
```
./debian-xfce.sh
```
After debian is launched: If you use chromium do this step:
![1000250189](https://github.com/user-attachments/assets/b09b86a1-0acf-4ffb-8a4a-6c770a6c9d09)
![1000250190](https://github.com/user-attachments/assets/17213aee-2c41-42a8-b632-9f6c0d9cbc02)
![1000250191](https://github.com/user-attachments/assets/1f3b80c3-09dd-4913-bca1-07f17f44ea97)
![1000250192](https://github.com/user-attachments/assets/3e1df06b-63dc-4492-9c1a-ec749f668fbf)
![1000250193](https://github.com/user-attachments/assets/d0fcebf3-8c5d-4506-b44b-900e3c22d875)
Add the ```--no-sandbox``` flag: 
![1000250194](https://github.com/user-attachments/assets/7d5367f9-4d4d-4396-ad04-ea128ebd9967)

---
## TIPS
* Start Debian desktop using (in Termux Shell):
```
./debian-xfce.sh
```
Exit Termux fully from the notification bar to stop the desktop.
* To login to debian shell in termux:
```
proot-distro login debian
```
With a specific user:
```
proot-distro login debian --user <username>
```
