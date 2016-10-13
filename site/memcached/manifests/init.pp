
file { '/etc/sysconfig/memcached':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => 'puppet:///modules/ntp/memcached',
}

service { 'memcached':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/sysconfig/memcached'],
}


