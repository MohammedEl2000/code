#!/bin/bash
sudo -s
sudo apt-get update -y
sudo apt upgrade -y
sudo apt -y install  ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install php8.0 libapache2-mod-php8.0 -y
sudo apt install -y apache2
sudo apt-get install git -y
sudo systemctl start apache2
sudo systemctl enable apache2
apt-get -y install php8.0-mysql php8.0-sqlite3
systemctl restart apache2
sudo rm -rf /var/www/html/*
echo ${endpoint} >> test.txt
sudo echo "<?php
define('DB_SERVER', 'azure.mysql.database.azure.com');
define('DB_USERNAME', 'mysqladmin');
define('DB_PASSWORD', 'Password123');
define('DB_DATABASE', 'exampledb');
?>" >> /var/www/azuredbinfo.inc
sudo git clone https://github.com/MohammedEl2000/CA2-IMD.git /var/www/html/
