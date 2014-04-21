# This puppet class file configures the puppet instance as master or slave
class postgresql::masterslaveconfig {
file {'config.sh':
     path => '/etc/puppetlabs/puppet/modules/config.sh',
     ensure => file,
     mode => 0644,
     content => ''cd /etc/postgresql/9.1/main
mv postgresql.conf postgresql_bck_4212014.conf
wget -O /etc/postgresql/9.1/main/postgresql.conf https://raw.githubusercontent.com/ParthNayak/Collaterals/master/postgresql.conf --no-check-certificate
cd /etc/postgresql/9.1/main
mv pg_hba.conf pg_hba_bck_4212014.conf
wget -O /etc/postgresql/9.1/main/pg_hba.conf https://raw.githubusercontent.com/ParthNayak/Collaterals/master/pg_hba.conf --no-check-certificate
sudo service postgres restart'',
     }
exec {'exec-config':
      command => '/etc/puppetlabs/puppet/modules/config.sh',
      require => File['/etc/puppetlabs/puppet/modules/config.sh'],
      }
      }
      
