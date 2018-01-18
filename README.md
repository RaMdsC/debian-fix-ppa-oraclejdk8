# debian-fix-ppa-oraclejdk8

Fix Oracle JDK8 PPA installation on Debian due to u151 expiration.

# Issue description

As of 16/02/2018 Oracle JDK8 PPA for Debian/Ubuntu uses 8u151, which just expired that same date; due to unavailability of
download sources, the installation of package "oracle-java8-installer" fails with 404 error.

# Solution usage

If you have not, install Oracle JDK 8 from the installer script "deb_install_oraclejdk8.bash".
```
# ./deb_install_oraclejdk8.bash
```
If this works straight, it means the PPA got an update and the issue is no longer existent; if not you will encounter a 404 error.

To fix it, use the complementary script "deb_fix_ppa_oraclejdk8.bash".
```
# ./deb_fix_ppa_oraclejdk8.bash
```
This should leave you with Oracle JDK 8 installed and set by default.

# Credit and references

Original solution from user "g1zmo2" on Ubuntu Forums:
https://ubuntuforums.org/showthread.php?t=2374686&p=13699384&highlight=#post13699384

Expiration details:
http://www.oracle.com/technetwork/java/javase/8u151-relnotes-3850493.html

PPA source is Web Upd8:
http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html
