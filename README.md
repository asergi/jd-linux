jd-linux
========

**jd-linux** is a bundle that provides everything you need to:

* install/uninstall JDownloader on Linux easily
* make it fit seamlessly into all the major DEs (GNOME, KDE, Xfce, LXDE)

The package contains: a Makefile, a dektop file, icons, a XML file that adds
mime-type support for encrypted link-containers like CCF, RSDF and DLC files,
and a script which will download and launch the latest stable JDownloader.
The downloaded files will be stored in ~/.jdownloader by default.

jd-linux is derived from the JDownloader Ubuntu package:
https://launchpad.net/~jd-team/+archive/jdownloader

Dependencies
------------

* curl
* imagemagick
* java
* kdialog | libnotify (optional)

Installation
------------

    $ make
    # make install

Usage
-----

    jdownloader [option]

    Options:
      -h                Show this help message and exit
      -r <directory>    The JDownloader directory to use
      -u                Manually check for updates

Author
------

Alessio Sergi (@al3hex) | al3hex at gmail dot com

License
-------

This project is released under the GNU GPLv3 license.
For more information see `COPYING`.
