class dnsmasq::service inherits dnsmasq {

    file { "/etc/supervisord.d/${module_name}.conf":
        ensure  => present,
        content => template("${module_name}/supervisord.conf.erb"),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }
}
