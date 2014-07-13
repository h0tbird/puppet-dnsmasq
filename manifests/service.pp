class dnsmasq::service inherits dnsmasq {

  service { 'dnsmasq':
    ensure  => $ensure,
    enable  => $enable,
    require => File['/etc/dnsmasq.conf'],
  }
}
