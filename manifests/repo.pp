
file { '/etc/yum.repos.d': 
  ensure => directory, 
  mode => '0775',
}
file { '/etc/yum.repos.d/update.repo':
  ensure => file,
  source => 'puppet:///modules/nginx/update.repo',
}  
  
yumrepo { 'updates':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Updates',
  enabled    => '1',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
}
