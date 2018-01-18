#!/bin/bash

###
# IMPORTANT: this script assumes you have already encountered the 404 error on installation.
# If you have not, first try and install Oracle JDK 8 from complementary script "deb_install_oraclejdk8.bash".
###

# Old strings referring to versions 8u144 and 8u151.
PARTNER_URL_144=http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135
SHA256SUM_TGZ_144=\"e8a341ce566f32c3d06f6d0f0eeea9a0f434f538d22af949ae58bc86f2eeaae4\"
JAVA_VERSION_144=8u144
J_DIR_144=jdk1.8.0_144
PARTNER_URL_151=http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf
SHA256SUM_TGZ_151=\"c78200ce409367b296ec39be4427f020e2c585470c4eed01021feada576f027f\"
JAVA_VERSION_151=8u151
J_DIR_151=jdk1.8.0_151

# New strings for version 8u161.
PARTNER_URL_161=http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808
SHA256SUM_TGZ_161=\"6dbc56a0e3310b69e91bb64db63a485bd7b6a8083f08e48047276380a0e2021e\"
JAVA_VERSION_161=8u161
J_DIR_161=jdk1.8.0_161

# Substitute in installer config scripts under /var/lib/dpkg/info.
# If you are curious, it is possible to see which of this files the installer tries to open with strace over installation.
DPKG_INFO_DIR=/var/lib/dpkg/info
sed -i 's|PARTNER_URL='"$PARTNER_URL_144"'|PARTNER_URL='"$PARTNER_URL_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|PARTNER_URL='"$PARTNER_URL_151"'|PARTNER_URL='"$PARTNER_URL_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|SHA256SUM_TGZ='"$SHA256SUM_TGZ_144"'|SHA256SUM_TGZ='"$SHA256SUM_TGZ_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|SHA256SUM_TGZ='"$SHA256SUM_TGZ_151"'|SHA256SUM_TGZ='"$SHA256SUM_TGZ_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|JAVA_VERSION='"$JAVA_VERSION_144"'|JAVA_VERSION='"$JAVA_VERSION_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|JAVA_VERSION='"$JAVA_VERSION_151"'|JAVA_VERSION='"$JAVA_VERSION_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|J_DIR='"$J_DIR_144"'|J_DIR='"$J_DIR_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*
sed -i 's|J_DIR='"$J_DIR_151"'|J_DIR='"$J_DIR_161"'|g' $DPKG_INFO_DIR/oracle-java8-installer.*

# Configure based on the modified scripts.
dpkg --configure -a
