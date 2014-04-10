class dnsmasq::install inherits dnsmasq {

    package { 'dnsmasq': ensure => $dnsmasq_version }
}
