class dnsmasq::service inherits dnsmasq {

    file { '/etc/supervisord.conf':
        ensure => present,
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }
}
