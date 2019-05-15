#!/bin/bash
#https://github.com/Ingmar05/Scripts
echo "Ubuntu 18.04 is not officially supported, use at you own risk!"
echo "Downloading libzip4"
wget http://http.us.debian.org/debian/pool/main/libz/libzip/libzip4_1.5.1-4_amd64.deb
echo "Installing libzip4"
sudo dpkg -i libzip4_1.5.1-4_amd64.deb
echo "Downloading official installer"
wget https://installer.id.ee/media/install-scripts/install-open-eid.sh
echo "Setting permissions"
sudo chmod 775 install-open-eid.sh
echo "Modifying official installer"
sed -i -e 's/$(lsb_release -cs)/bionic/g' install-open-eid.sh
echo "Running official installer"
./install-open-eid.sh
echo "Cleaning up"
rm install-open-eid.sh
rm libzip4_1.5.1-4_amd64.deb
echo "Done!"
