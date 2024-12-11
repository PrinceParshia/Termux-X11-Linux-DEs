## OPENSUSE XFCE
![1000250123](https://github.com/user-attachments/assets/05420815-bc23-4737-a836-4062520a7d5e)

---
#### NOTE
* ~ $ is Termux Shell.
* localhost:~ # is openSUSE Shell.
---
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
Install a browser to access internet:
```
zypper install chromium
```
```
zypper install firefox
```
Create an user to access the desktop:
```
useradd -m <username>
```
---
## INSTALL DEBUG METHOD (TERMUX-X11)
Execute ```exit``` until you appear in Termux Shell.
Download the openSUSE Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/opensuse/opensuse-xfce.sh
```
```
nano opensuse-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your username you created in openSUSE Shell. CTRL - X - Y - ENTER.
```
chmod +x opensuse-xfce.sh
```
Start openSUSE desktop with: 
```
./opensuse-xfce.sh
```
---
## TO DO AFTER INSTALLATION
After openSUSE is launched:
![1000250115](https://github.com/user-attachments/assets/f949680e-4abe-4d4c-9627-85a8bb8235b6)
![1000250116](https://github.com/user-attachments/assets/36ecf34b-10e9-498b-b5eb-3def092b2aa0)
![1000250117](https://github.com/user-attachments/assets/228985ef-49a9-4471-9c87-65ab4b88f47c)
![1000250119](https://github.com/user-attachments/assets/45dff362-d628-4603-a4cf-3a73966bbace)
![1000250118](https://github.com/user-attachments/assets/136b1378-881e-4e5a-8203-331db465309f)
![1000250120](https://github.com/user-attachments/assets/88c3a91b-1c34-45d1-9c7e-efcb461f927b)
![1000250121](https://github.com/user-attachments/assets/cf83ac04-869a-4f2d-b107-959ecd4f8aea)
Your all done!

---
## TOOLTIP
* Start X11 connection using (In Termux Shell):
  ```
  ./opensuse-xfce.sh
  ```
  And vnc connection using (In Termux Shell):
  ```
  ./opensuse-xfce-vnc.sh
  ```
* Close X11 connection using the exit button on the notifications bar. And vnc connection using (in openSUSE shell):
  ```
  vncserver -kill :1 
  ```
* Open openSUSE Shell in Termux using:
  ```
  proot-distro login opensuse
  ```
  And with a specific user:
  ```
  proot-distro login opensuse --user <username>
  ```
