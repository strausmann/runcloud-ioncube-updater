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

### PHP 5.6
if [ -d "/RunCloud/Packages/php56rc/" ] 
then
    echo "Install ioncube Loader for PHP 5.6"
    sudo cp ioncube/ioncube_loader_lin_5.6.so /RunCloud/Packages/php56rc/lib/php/extensions/no-debug-non-zts-20131226/
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_5.6.so" > /etc/php56rc/conf.d/20ioncube.ini'
    sudo systemctl restart php56rc-fpm
fi

### PHP 7.0
if [ -d "/RunCloud/Packages/php70rc/" ] 
then
    echo "Install ioncube Loader for PHP 7.0"
    sudo cp ioncube/ioncube_loader_lin_7.0.so /RunCloud/Packages/php70rc/lib/php/extensions/no-debug-non-zts-20151012/
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_7.0.so" > /etc/php70rc/conf.d/20ioncube.ini'
    sudo systemctl restart php70rc-fpm
fi

### PHP 7.1
if [ -d "/RunCloud/Packages/php71rc/" ] 
then
    echo "Install ioncube Loader for PHP 7.1"
    sudo cp ioncube/ioncube_loader_lin_7.1.so /RunCloud/Packages/php71rc/lib/php/extensions/no-debug-non-zts-20160303/
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_7.1.so" > /etc/php71rc/conf.d/20ioncube.ini'
    sudo systemctl restart php71rc-fpm
fi

### PHP 7.2
if [ -d "/RunCloud/Packages/php72rc/" ] 
then
    echo "Install ioncube Loader for PHP 7.2"
    sudo cp ioncube/ioncube_loader_lin_7.2.so /RunCloud/Packages/php72rc/lib/php/extensions/no-debug-non-zts-20170718/
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_7.2.so" > /etc/php72rc/conf.d/20ioncube.ini'
    sudo systemctl restart php72rc-fpm
fi

### PHP 7.3
if [ -d "/RunCloud/Packages/php73rc/" ]
then
    echo "Install ioncube Loader for PHP 7.3"
    sudo cp ioncube/ioncube_loader_lin_7.3.so /RunCloud/Packages/php73rc/lib/php/extensions/no-debug-non-zts-20180731//
    sudo bash -c 'echo "zend_extension=ioncube_loader_lin_7.3.so" > /etc/php73rc/conf.d/20ioncube.ini'
    sudo systemctl restart php73rc-fpm
fi

echo "Remove TEMP Files"
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

