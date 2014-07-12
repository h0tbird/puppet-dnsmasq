class dnsmasq (

  $dnsmasq_version       = 'latest',
  $dnsmasq_effective_uid = 'root',
  $dnsmasq_effective_gid = 'root',
  $dhcp_range            = ['192.168.1.50,192.168.1.150,12h'],

) {

  contain "${module_name}::install"
  contain "${module_name}::config"
  contain "${module_name}::service"
}
