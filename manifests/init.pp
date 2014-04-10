class dnsmasq (

    $dnsmasq_version = 'latest',

) {

    contain "${module_name}::install"
    contain "${module_name}::config"
}
