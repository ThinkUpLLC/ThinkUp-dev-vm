git clone https://github.com/ginatrapani/ThinkUp.git thinkup

cp /var/www/thinkup/configs/config.inc.php thinkup/webapp/config.inc.php
cp /var/www/thinkup/configs/config.tests.inc.php thinkup/tests/config.tests.inc.php

mkdir thinkup/webapp/data/web/
mkdir thinkup/webapp/data/web/logs/
mkdir thinkup/webapp/data/tests/
mkdir thinkup/webapp/data/tests/logs/
touch thinkup/webapp/data/tests/logs/stream.log

chmod -R 777 thinkup/webapp/data/

chown -R vagrant thinkup/
chgrp -R vagrant thinkup/

mysql -u thinkup -pnice2bnice -D thinkup_web < thinkup/webapp/install/sql/build-db_mysql-upcoming-release.sql

mysql -u thinkup -pnice2bnice -D thinkup_web < /var/www/thinkup/create-admin.sql