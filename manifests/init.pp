class dnsmasq {

    contain "${module_name}::install"
    contain "${module_name}::config"
}
