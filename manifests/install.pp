class dnsmasq::install inherits dnsmasq {

  package { ['dnsmasq','syslinux-tftpboot']: ensure => $version }
}
