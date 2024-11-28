Found a shorter way will get update soon!
Not finished yet

## MANJARO XFCE
![Screenshot_2024-11-21_08-03-21](https://github.com/user-attachments/assets/762326c2-71d5-4dd9-9a12-a056a02fcd66)

---
Info: (~ $) is Termux Shell, ([root@localhost ~]#) is Manjaro Shell. Don't miss any commands!

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
To save and exit press CTRL - X - Y - ENTER.

Install xfce4 and additional packages:
```
pacman -S xfce4 xfce4-goodies pamac tumbler engrampa ristretto parole sudo git matcha-gtk-theme
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
Install Manjaro default xfce settings:
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
mv manjaro-xfce-settings/skel/.config /home/<username>/
```
```
cd /usr/share/icons/
```
```
git clone https://gitlab.manjaro.org/artwork/icon-themes/manjaro-icons.git
```
Execute ```exit``` until you appear in Termux Shell.

Download the Manjaro Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Linux-XFCE-Android/refs/heads/main/manjaro/manjaro-xfce.sh
```
```
nano manjaro-xfce.sh
```
Scroll to line 20 and change ```<username>``` to your username you created in Manjaro Shell. CTRL - X - Y - ENTER.
```
chmod +x manjaro-xfce.sh
```
Start Manjaro desktop with: 
```
./manjaro-xfce.sh
```
After Manjaro is launched:
![1000249491](https://github.com/user-attachments/assets/51a29c74-29e7-404b-bd8a-e9d9d43cad46)
![1000249492](https://github.com/user-attachments/assets/0f200659-76af-4913-81bd-74dda27de669)
![1000249493](https://github.com/user-attachments/assets/abca3e8b-db7d-44b2-8568-104f4cd43882)
![1000249494](https://github.com/user-attachments/assets/c928dd9a-912f-4d0b-8aad-d4e65c58e63e)
![1000249495](https://github.com/user-attachments/assets/537ba7e9-dd47-454b-b7a1-4462f56dc791)
![1000249496](https://github.com/user-attachments/assets/c83d69a8-ee2f-448c-806b-81bd4455ca18)
![1000249497](https://github.com/user-attachments/assets/21afd831-3380-4216-828f-6a927f77517c)
![1000249498](https://github.com/user-attachments/assets/5e0120b3-06d9-439f-896c-3848a2276215)
Execute the commands in terminal:
```
cd /usr/share/icons/
```
```
mv /home/<username>/Downloads/papirus-icon-theme-teal-folders.tar.xz /usr/share/icons/
```
```
tar -xf papirus-icon-theme-teal-folders.tar.xz
```
```
rm papirus-icon-theme-teal-folders.tar.xz
```


---
## TOOLTIP
* Start Manjaro Desktop using (In Termux Shell):
  ```
  ./manjaro-xfce.sh
  ```
* Close Manjaro Desktop using the exit button on the notifications bar
* Open Manjaro Shell in Termux using:
  ```
  proot-distro login manjaro
  ```
  And with a specific user:
  ```
  proot-distro login manjaro --user <username>
  ```
