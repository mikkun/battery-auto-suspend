install:
	cp ./battery-auto-suspend.conf    /etc/
	cp ./battery-auto-suspend.service /lib/systemd/system/
	cp ./battery-auto-suspend         /usr/local/bin/
	chmod 644 /etc/battery-auto-suspend.conf
	chmod 644 /lib/systemd/system/battery-auto-suspend.service
	chmod 755 /usr/local/bin/battery-auto-suspend
	systemctl enable battery-auto-suspend
	systemctl start  battery-auto-suspend
	systemctl status battery-auto-suspend

uninstall:
	systemctl stop    battery-auto-suspend
	systemctl disable battery-auto-suspend
	rm -f /etc/battery-auto-suspend.conf
	rm -f /lib/systemd/system/battery-auto-suspend.service
	rm -f /usr/local/bin/battery-auto-suspend
