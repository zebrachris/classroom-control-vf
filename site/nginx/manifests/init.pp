class memcached {
  package { 'nginx':
    ensure => present, 
  }

  file { '/etc/nginx/memcached':
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'puppet:///modules/nginx/index.html',
    require => Package['memcached'],
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/nginx/memcached'],
  }
}
