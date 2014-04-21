# This puppet class file configures the puppet instance as master or slave
class postgresql::masterslaveconfig {
file {'config.sh':
     path => '/etc/puppetlabs/puppet/modules/config.sh',
     ensure => file,
     mode => 0644,
     source => 'puppet:///files/config.sh',
     }
exec {'exec-config':
      command => '/etc/puppetlabs/puppet/modules/config.sh',
      require => File['/etc/puppetlabs/puppet/modules/config.sh'],
      }
      }
      
