class dnsmasq::install inherits dnsmasq {

  package { 'dnsmasq': ensure => $version }
}
