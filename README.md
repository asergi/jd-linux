jd-linux
========

**jd-linux** is a bundle that provides everything you need to:

    * install/uninstall JDownloader on Linux easily;
    * make it fit seamlessly into all the major Linux Desktop Environments
      (GNOME, KDE, Xfce, LXDE).

The package contains: a Makefile, a dektop file, icons, a XML file that adds
mime-type support for encrypted link-containers like CCF, RSDF and DLC files
and a script, which will download and launch the latest stable JDownloader.
The downloaded files will be stored in ~/.jdownloader by default.

jd-linux is derived from the JDownloader Ubuntu package:
    https://launchpad.net/~jd-team/+archive/jdownloader

jd-container.png and jdownloader.xml files are both provided by:
    fcpt - klinxer at gmail dot com

Dependencies
------------

    * imagemagick
    * java
    * wget
    * zenity

Installation
------------

    $ make
    # make install

Author
------

Alessio Sergi (@al3hex) - al3hex at gmail dot com

License
-------

This project is released under the GNU GPLv3 license.
For more information see `COPYING`.
