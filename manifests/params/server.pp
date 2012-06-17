class ntp::params::server inherits ntp::params {
  $defaultfile = $::operatingsystem ? {
    default => '/etc/default/ntp',
  }

  $hasrestart = $::operatingsystem ? {
    default => true,
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $packagename = $::operatingsystem ? {
    default => 'ntp',
  }

  $processname = $::operatingsystem ? {
    default => 'ntpd',
  }

  $servicename = $::operatingsystem ? {
    default => 'ntp',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
