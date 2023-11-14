#!/bin/bash
service mysql start
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE";
mysql -u root -p -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'" ;
mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';" ;
mysql -u root -p -e "FLUSH PRIVILEGES;"
mysql -u root -p -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql -u root -p -e "FLUSH PRIVILEGES;"
kill `cat /var/run/mysqld/mysqld.pid`
mysqld