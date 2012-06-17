class ntp::params::client inherits ntp::params {
  $defaultfile = $::operatingsystem ? {
    default => '/etc/default/ntpdate',
  }

  $packagename = $::operatingsystem ? {
    default => 'ntpdate',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
