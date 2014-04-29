# This script contains a script 
# that configures master and slave
sudo service postgresql stop
cd /var/lib/postgres/9.1
mv main main_bck_1
pg_basebackup -x -P -D main -h 192.168.56.102
