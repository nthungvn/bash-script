#! /bin/sh

sudo cp /etc/network/interfaces /etc/network/interfaces.bk
sudo nano /etc/network/interfaces
## The alternative network interface
#auto eth1
#iface eth1 inet dhcp
sudo reboot

sudo apt-get update
sudo apt-get install virtualbox-guest-dkms

sudo cp /etc/rc.local /etc/rc.local.bk
sudo nano /etc/rc.local
#if [ -d /home/nthung/w-rails ]; then
#  echo 'OK'
#else
#  mkdir /home/nthung/w-rails
#fi
#mount -t vboxsf -o uid=1000,gid=1000 w-rails /home/nthung/w-rails
#service apache2 restart
sudo reboot

sudo cp /etc/hosts /etc/hosts.bk
sudo nano /etc/hosts
#.vn ubuntu

if ! which curl; then
  sudo apt-get install curl
fi
sudo apt-get install libmysqlclient-dev
#sudo apt-get install libpq-dev
\curl -L https://get.rvm.io | bash -s stable --ruby
source /home/nthung/.rvm/scripts/rvm
exit

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install passenger
gem install therubyracer
rvm use ruby-2.1.3@rails-4.1.6 --create --default
gem install rails

sudo apt-get install libcurl4-openssl-dev apache2-threaded-dev libapr1-dev libaprutil1-dev
passenger-install-apache2-module
#---------Info---------
#/home/nthung/.rvm/gems/ruby-2.1.3@global/gems/passenger-4.0.53/doc/Users guide Apache.html
#https://www.phusionpassenger.com/documentation/Users%20guide%20Apache.html

sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bk
sudo nano /etc/apache2/apache2.conf
#LoadModule passenger_module /home/nthung/.rvm/gems/ruby-2.1.3@global/gems/passenger-4.0.53/buildout/apache2/mod_passenger.so
#   <IfModule mod_passenger.c>
#     PassengerRoot /home/nthung/.rvm/gems/ruby-2.1.3@global/gems/passenger-4.0.53
#     PassengerDefaultRuby /home/nthung/.rvm/gems/ruby-2.1.3@rails-4.1.6/wrappers/ruby
#   </IfModule>
sudo nano /etc/apache2/sites-available/user.conf
#<VirtualHost *:80>
#  ServerName app.vn
#  DocumentRoot /home/nthung/w-rails/app/public
#  <Directory /home/nthung/w-rails/app/public>
#    # This relaxes Apache security settings.
#    AllowOverride all
#    # MultiViews must be turned off.
#    Options -MultiViews
#    # Uncomment this if you're on Apache >= 2.4:
#    Require all granted
#  </Directory>
#</VirtualHost>

sudo a2ensite user.conf
sudo a2dissite 000-default.conf
sudo service apache2 reload

cd /home/nthung/w-rails
rails new app --skip-bundle
cd app
nano Gemfile
bundle
RAILS_ENV=production rake assets:precompile
GENERATED_CODE=`RAILS_ENV=production rake secret`
echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.bash_profile
echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.bashrc
#echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.bash_login
#echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.profile
#echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.zlogin
#echo "export SECRET_KEY_BASE=$GENERATED_CODE" >> ~/.zshrc
sudo service apache2 restart

sudo rm -f /var/cache/apt/archives/*deb

