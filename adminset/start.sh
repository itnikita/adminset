#/bin/bash
service mariadb start
chkconfig mariadb on
mysql -e "CREATE DATABASE if not exists adminset DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"

service  mongod start
##chkconfig mongd on

cd /opt/
python manage.py makemigrations
python manage.py migrate
##echo "please create your adminset' super admin:"
##python manage.py createsuperuser
/usr/bin/mysql -e "insert into adminset.accounts_userinfo (password,username,email,is_active,is_superuser) values ('pbkdf2_sha256\$24000\$2odRjOCV1G1V\$SGJCqWf0Eqej6bjjxusAojWtZkz99vEJlDbQHUlavT4=','admin','admin@126.com',1,1);"
##scp /opt/install/server/adminset.service /usr/lib/systemd/system
systemctl daemon-reload
chkconfig adminset on
service adminset start

chkconfig redis on
service redis start

systemctl daemon-reload
chkconfig celery on
chkconfig beat on
service celery start
service beat start

service nginx start
nginx -s reload
echo ok
