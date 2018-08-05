#!/bin/bash

cd /usr/local
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

echo "Download und entpacken der neusten ionCube Loader Version"
sudo wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
sudo tar xzf ioncube_loaders_lin_x86-64.tar.gz

### PHP 5.5
if [ -d "/RunCloud/Packages/php55rc/" ] 
then
    echo "Install ioncube Loader for PHP 5.5"
    sudo cp ioncube/ioncube_loader_lin_5.5.so /RunCloud/Packages/php55rc/lib/php/extensions/no-debug-non-zts-20121212/
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_5.5.so" > /etc/php55rc/conf.d/20ioncube.ini'
    sudo systemctl restart php55rc-fpm
fi







echo "Remove TEMP Files"
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

