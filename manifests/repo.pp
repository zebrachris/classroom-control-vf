

#file { '/etc/yum.repos.d': 
#  ensure => directory, 
#  owner => 'root',
#  group => 'root',
#  mode => '0775',
#}
#file { '/etc/yum.repos.d/update.repo':
#  ensure => file,
#  owner => 'root',
#  group => 'root',
#  mode => '0664',  
#  source => 'puppet:///modules/nginx/update.repo',
#}  
  
#yumrepo { 'updates':
#  ensure     => 'present',
#  descr      => 'CentOS-$releasever - Updates',
#  enabled    => '1',
#  gpgcheck   => '1',
#  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
#  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
#}
