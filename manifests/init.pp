class dnsmasq {

    anchor { "${module_name}::begin":   } ->
    class  { "${module_name}::install": } ->
    anchor { "${module_name}::end":     }
}
