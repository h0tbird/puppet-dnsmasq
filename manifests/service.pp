class dnsmasq::service inherits dnsmasq {

    file { '/etc/supervisord.conf':
        ensure  => present,
        content => template("$module_name/supervisord.conf.erb");
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
    }
}
