class dnsmasq::config inherits dnsmasq {

  file {

    '/etc/dnsmasq.conf':
      ensure  => present,
      content => template("${module_name}/dnsmasq.conf.erb"),
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      require => Package['dnsmasq'];

    '/usr/lib/systemd/system/dnsmasq.service':
      ensure  => present,
      content => template("${module_name}/dnsmasq.service.erb"),
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      require => Package['dnsmasq'];
  }
}
