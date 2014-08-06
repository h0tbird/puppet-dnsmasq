class dnsmasq (

  $ensure        = undef,
  $enable        = true,
  $version       = 'latest',
  $effective_uid = 'root',
  $effective_gid = 'root',
  $dhcp_range    = ['192.168.1.50,192.168.1.150,12h'],
  $log_queries   = undef,
  $log_dhcp      = undef,
  $enable_tftp   = undef,
  $tftp_root     = '/var/ftpd',

) {

  contain "${module_name}::install"
  contain "${module_name}::config"
  contain "${module_name}::service"
}
