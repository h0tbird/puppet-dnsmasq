class dnsmasq::service inherits dnsmasq {

  service { 'dnsmasq':
    ensure => $ensure,
    enable => $enable,
  }
}
