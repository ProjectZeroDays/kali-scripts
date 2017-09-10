From: https://ubuntuforums.org/showthread.php?t=1724802
root@computer# cp spoofmac /etc/init.d/spoofmac
root@computer# sudo chmod +x /etc/init.d/spoofmac
root@computer# sudo update-rc.d spoofmac defaults

root@computer# gedit /etc/NetworkManager/NetworkManager.conf

#Add this line
[connection]
ethernet.cloned-mac-address=preserve
wifi.cloned-mac-address=preserve
