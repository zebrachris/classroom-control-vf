repo { 'updates':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Updates',
  enabled    => '0',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
}
