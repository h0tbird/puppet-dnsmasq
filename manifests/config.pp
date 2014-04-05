class dnsmasq::config {

    file { '/etc/dnsmasq.conf':
        ensure   => present,
        content  => template("${module_name}/dnsmasq.conf.erb"),
        owner    => 'root',
        group    => 'root',
        mode     => '0644',
        requires => Package['dnsmasq'],
    }
}