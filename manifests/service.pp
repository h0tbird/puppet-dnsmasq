class dnsmasq::service inherits dnsmasq {

  service { 'dnsmasq':
    ensure    => $ensure,
    enable    => $enable,
    subscribe => File['/etc/dnsmasq.conf'],
  }
}
