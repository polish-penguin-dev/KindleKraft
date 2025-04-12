echo "Terminating Useless Tasks..."
sleep 1
stop tmd
stop webreader
stop cmd
stop demd
stop dpmd
stop appmgrd
stop perfd
stop stackdumpd
stop kb
stop contentpackd
stop pillow
stop todo
stop rcm
stop otav3
stop otaupd
stop udevd
stop dynconfig
stop lipcd
stop archive
sleep 1
iptables -A INPUT -i wlan0 -p tcp -m tcp --dport 25565 -j ACCEPT
echo "Opened Port 25565!"
swapon /mnt/base-us/swapfile
sleep 0.5
echo "Please Wait, Your Server Is Starting!"
sleep 0.5
echo "Your Kindle Will Automatically Reboot When It Is Stopped."
sleep 1
/mnt/us/kindlekraft-*/Jdk8-Arm32-HF/bin/java -jar -server -Xss512k server.jar
sleep 0.5
echo "Server Stopped! Rebooting Kindle... (15s)"
sleep 15
reboot