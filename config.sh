# Configuration of Postgres master and slave
cd /etc/postgresql/9.1/main
mv postgresql.conf postgresql_bck_4212014.conf
wget -O /etc/postgresql/9.1/main/postgresql.conf https://raw.githubusercontent/ParthNayak/Collaterals/master/postgresql.conf --no-check-certificate
cd /etc/postgresql/9.1/main
mv pg_hba.conf pg_hba_bck_4212014.conf
wget -O /etc/postgresql/9.1/main/pg_hba.conf https://raw.githubusercontent/ParthNayak/Collaterals/master/pg_hba.conf --no-check-certificate
sudo service postgres restart
