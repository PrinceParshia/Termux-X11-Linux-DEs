## MANJARO-XFCE
* Video Tutorial
---
Open Termux and execute these commands.
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install proot-distro termux-x11 wget pulseaudio
```
Now install Manjaro using Proot-Distro.
```
proot-distro install manjaro
proot-distro login manjaro
```
After installation, You should see this <[root@localhost ~]#>. If it is, execute the following commands.
```
pacman -Syu
```
```
nano /etc/pacman.conf
```
You should see a text editor page, scroll down using down arrow and try to find a line called "SigLevel" and replace the value with Never. Heres an example how it will look like.
```
SigLevel = Never
```
After this to exit the page press CTRL 1 time then press these keys on your keyboard X then Y then ENTER.

Now execute the following commands in the Manjaro Shell.
```
pacman -S sudo git xfce4 xfce4-goodies tumbler engrampa
```
You have to download a browser to access the internet. Cromium is recommend because it's an arm version of Google Chrome (Unofficial).
```
pacman -S chromium
```
Then create a user to acces the Manjaro Desktop.
```
useradd -m <username>
```
Give the sudo permission to your user.
```
nano /etc/sudoers
```
```
<username> ALL=(ALL:ALL) ALL
```
CTRL - X - Y - ENTER

Now set a password to access your new user.
```
passwd <username>
```
Manjaro Default Xfce theme doesn't comes with it. We have to download it manually. If you dont want the Manjaro default theme you can skip it.

In termux shell execute this command to open manjaro with your new user.
```
proot-distro login manjaro --user <username>
```
If your already in Manjaro shell <[root@localhost ~]#> execute 
```
su - <username>
```
Then execute these commands.
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
rm -r ~/.config/xfce4
```
```
rm -r ~/.config/Thunar
```
```
mv manjaro-xfce-settings/skel/.config/xfce4 ~/.config
```
```
mv manjaro-xfce-settings/skel/.config/Thunar ~/.config
```
Download the theme files called Matcha-dark-sea and Papirus-teal-folders.
Then execute this commands 
```
cd Downloads
```
Adjust the file name with your downloaded files.
```
tar -xf Matcha-dark-sea.tar.xz
```
```
tar -xf Papirus*.tar.xz
```
```
mv Matcha-dark-sea /usr/share/themes
```
```
mv Papirus* /usr/share/icons
```
Now install the startup command using wget (Termux-X11 app is required). In Termux Shell (If your in manjaro shel execute ```exit``` untill you see "~ $") Then execute.
```
wget https://raw.githubusercontent.com/PrinceParshia/manjaro-xfce-android/refs/heads/main/manjaro-xfce.sh
```
```
nano manjaro-xfce.sh
```
Scroll and change <username> to the user you created in manjaro shell
```
chmod +x manjaro-xfce.sh
```
Now run downloaded startup file to start the desktop. You can use it later to run the desktop again.
```
./manjaro-xfce.sh
```
