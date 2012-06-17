class ntp::client::config {
  file { $ntp::params::client::defaultfile:
    ensure  => file,
    content => template('ntp/etc/default/ntpdate.erb'),
    group   => 'root',
    mode    => '0644',
    owner   => 'root',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
