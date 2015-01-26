# Clone ThinkUp source
git clone https://github.com/ginatrapani/ThinkUp.git /var/www/default/thinkup

# Copy prefab ThinkUp config files
cp /var/www/setup-thinkup/configs/config.inc.php /var/www/default/thinkup/webapp/config.inc.php
cp /var/www/setup-thinkup/configs/config.tests.inc.php /var/www/default/thinkup/tests/config.tests.inc.php

# Set up data directories for web and tests
mkdir /var/www/default/thinkup/webapp/data/web/
mkdir /var/www/default/thinkup/webapp/data/web/logs/
mkdir /var/www/default/thinkup/webapp/data/tests/
mkdir /var/www/default/thinkup/webapp/data/tests/logs/
touch /var/www/default/thinkup/webapp/data/tests/logs/stream.log

# Permissions
chmod -R 777 /var/www/default/thinkup/webapp/

# Build the web db
mysql -u thinkup -pnice2bnice -D thinkup_web < /var/www/default/thinkup/webapp/install/sql/build-db_mysql-upcoming-release.sql

# Add an admin user
mysql -u thinkup -pnice2bnice -D thinkup_web < /var/www/setup-thinkup/sql/create-admin.sql

# Symlink the web install
ln -s /var/www/default/thinkup/webapp/ /var/www/docroot/mythinkup

# Replace AppArmor config and reload
# http://stackoverflow.com/questions/2783313/how-can-i-get-around-mysql-errcode-13-with-select-into-outfile
cp /var/www/setup-thinkup/configs/usr.sbin.mysqld /etc/apparmor.d/usr.sbin.mysqld

/etc/init.d/apparmor reload