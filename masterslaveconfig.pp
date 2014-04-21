# This puppet class file configures the puppet instance as master or slave
class postgresql::masterslaveconfig {
file {'/etc/puppetlabs/puppet/modules/postgresql/manifests/config.sh':
     ensure => file,
     mode => 0644,
     source => 'puppet:///etc/puppetlabs/puppet/modules/postgresql/manifests/config.sh',
     }
exec {'exec-config':
      command =>'/etc/puppetlabs/puppet/modules/postgresql/manifests/config.sh',
      require => File['/etc/puppetlabs/puppet/modules/postgresql/manifests/config.sh'],
      }
      }
      
