battery-auto-suspend - Auto Suspend on Low Battery
==================================================

Introduction
------------

The **battery-auto-suspend** is a simple bash systemd service to auto suspend on low battery.

Installation
------------

### To Install ###

Execute the following commands after extracting the downloaded archive:

    # cd /path/to/battery-auto-suspend
    # make install

### To Uninstall ###

    # cd /path/to/battery-auto-suspend
    # make uninstall

Configuration
-------------

You can change the following settings in the */etc/battery-auto-suspend.conf*:

* **ACTION** - Must be "suspend", "hibernate" or "hybrid-sleep".
* **BATTERY_LOW** - Must be an integer between 1 and 99.
* **INTERVAL_SEC** - Must be an integer greater than or equal to 1.

If you edit the */etc/battery-auto-suspend.conf*, the **battery-auto-suspend** service must be restarted.

    # systemctl restart battery-auto-suspend

License
-------

Copyright (C) 2014 [KUSANAGI Mitsuhisa](https://github.com/mikkun)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
