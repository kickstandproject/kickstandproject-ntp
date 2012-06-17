class ntp::server::init {
  include ntp::server::install
  include ntp::server::config
  include ntp::server::service

  if ($ntp::server::monitor) {
    include ntp::server::monitor
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
