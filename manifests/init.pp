class dnsmasq (

  $ensure        = undef,
  $enable        = true,
  $version       = 'latest',
  $effective_uid = 'root',
  $effective_gid = 'root',
  $dhcp_ranges   = [],
  $log_queries   = undef,
  $log_dhcp      = undef,
  $enable_tftp   = undef,
  $tftp_root     = '/var/ftpd',
  $dhcp_boot     = 'pxelinux.0',
  $domain_needed = undef,
  $local         = undef,
  $expand_hosts  = undef,
  $domain        = undef,
  $dhcp_hosts    = [],
  $dhcp_options  = [],
  $addn_hosts    = undef,

) {

  contain "${module_name}::install"
  contain "${module_name}::config"
  contain "${module_name}::service"
}
