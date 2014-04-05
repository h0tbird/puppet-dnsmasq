class dnsmasq::install {

    package { 'dnsmasq':
        ensure => latest,
    }
}
