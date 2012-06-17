class ntp::server::service {
  service { $ntp::params::server::servicename:
    ensure      => running,
    enable      => true,
    hasrestart  => $ntp::params::server::hasrestart,
    hasstatus   => $ntp::params::server::hasstatus,
    require     => Class['ntp::server::config'],
    subscribe   => File[$ntp::params::server::configfile],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
