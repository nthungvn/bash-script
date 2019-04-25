#! /sh/bash

### Install MySQL server
sudo apt-get install mysql-server -y
# Update configuration
echo "[client]" | sudo tee -a /etc/mysql/my.cnf
echo "default-character-set=utf8" | sudo tee -a /etc/mysql/my.cnf
echo "[mysqld]" | sudo tee -a /etc/mysql/my.cnf
echo "character-set-server=utf8" | sudo tee -a /etc/mysql/my.cnf
# Restart service
sudo systemctl start mysql
sudo systemctl enable mysql

sudo mysql_secure_installation
# Setup password is mySQLRoot

# Create Database
sudo mysql -u root -p

# CREATE DATABASE reviewboard CHARACTER SET utf8;
# CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
# GRANT ALL PRIVILEGES ON reviewboard.* to 'myuser'@'localhost';

### Install Apache Web Server
sudo apt-get install apache2 libapache2-mod-wsgi -y

sudo systemctl start apache2
sudo systemctl enable apache2

### Install Pip and Setuptools
sudo apt-get install python-setuptools
sudo python /usr/lib/python2.7/dist-packages/easy_install.py pip
sudo pip install -U pip setuptools


### Install dependancies need for install or runtime ReviewBoard
sudo apt-get install build-essential python-dev libffi-dev libssl-dev patch -y
sudo apt-get install memcached -y
sudo pip install python-memcached


### Install ReviewBoard
sudo pip install ReviewBoard

# Install Database Bindings
sudo pip install -U mysql-python
# sudo apt-get install python-mysqldb -y
sudo apt-get install libmysqlclient-dev -y

### Install Source Control Components: Git
sudo apt-get install git-core


## Create ReviewBoard side
sudo rb-site install /var/www/reviewboard
# Username/Password of reviewboard admin: admin/admin
# Enter IP address if have no domain

sudo chown -R www-data:www-data /var/www/reviewboard
sudo cp /var/www/reviewboard/conf/apache-wsgi.conf /etc/apache2/sites-available/reviewboard.conf
sudo a2ensite 192.168.1.2.conf
sudo systemctl restart memcached
sudo systemctl enable memcached
sudo systemctl restart apache2

# If run into problem: Bad Request (400), follow: https://stackoverflow.com/questions/28624997/apache-httpd-bad-request-when-accessing-by-ip-address-review-board
# https://reviewboard.narkive.com/d6b4IHSH/review-board-installation-bad-request-400
