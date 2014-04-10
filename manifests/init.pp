class dnsmasq (

    $dnsmasq_version       = 'latest',
    $dnsmasq_effective_uid = 'root',
    $dnsmasq_effective_gid = 'root',

) {

    contain "${module_name}::install"
    contain "${module_name}::config"
    contain "${module_name}::service"
}
