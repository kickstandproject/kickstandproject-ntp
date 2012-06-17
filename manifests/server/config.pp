class ntp::server::config {
  file { $ntp::params::configfile:
    ensure  => file,
    content => template('ntp/etc/ntp.conf.erb'),
    group   => $ntp::params::group,
    mode    => $ntp::params::mode,
    owner   => $ntp::params::owner,
    require => Class['ntp::server::install'],
  }

  file { $ntp::params::server::defaultfile:
    ensure  => file,
    content => template('ntp/etc/default/ntp.erb'),
    group   => 'root',
    mode    => '0644',
    notify  => Class['ntp::server::service'],
    owner   => 'root',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
