class ntp::server::monitor {
  monitor::function::process { $name:
    description => 'NTP',
    process     => $ntp::params::server::processname,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
