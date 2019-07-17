 # Reboot To Windows
 
 Linux desktop shortcut for rebooting to Windows.
 
 ## How-to
 #### Edit RebootWindows.sh
 ```bash
grub-reboot {Windows list number in grub}
```
#### Edit RebootWindows.desktop
 ```bash
Exec={path to}/RebootWindows.sh
Icon={path to}/windows.ico
```

#### Add script to Sudoers file
 ```bash
sudo visudo
```
   Add this line to end:
 ```bash
%admin ALL = NOPASSWD: {path to}/RebootWindows.sh
```

#### Move desktop entry to ~/Desktop
 ```bash
mv RebootWindows.desktop ~/Desktop
```

#### Click desktop shortcut and add to trusted list
