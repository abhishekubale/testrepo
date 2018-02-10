#file {'/home/vagrant/test':
#     ensure => present,
#     content => "hello world \n",
#     mode => '0755',
#     }
#
#notify {'/home/vagrant/test has already been synced.':
#      require => File['/home/vagrant/test'],                   # Note, you must capitalise, i.e. "File" and not "file"
#}

#package { 'collectd-core' :
#        ensure => purged,
#}
#  service { 'sshd':
#    ensure  => 'running',
#    enable  => true,
#    #subscribe => File["/etc/ssh/sshd_config"]
#  }
#
#  # add a notify to the file resource
#  file { '/etc/ssh/sshd_config':
#    notify  => Service['sshd'],  # this sets up the relationship
#    audit => content,
#    mode    => '0600',
#    owner   => 'root',
#    group   => 'root',
#    #content => template("/etc/ssh/sshd_config.bak")
#  }
  # add user, create homedir and set a password
#  user { 'finch1':
#    ensure     => present,
#    comment    => 'H Finch',
#    home    => '/home/finch1',
#    managehome => true,
#    uid => 9001,
#  }
#
#ssh_authorized_key { 'key' :
#  user => 'finch1',
#  type => 'ssh-rsa',
#  key => 'akldjafsadfsf',
#}
$files = ['/home/vagrant/test1','/home/vagrant/test2','/home/vagrant/test3']
$files.each |$f| {
     file { $f:
       ensure => present
     }
}
