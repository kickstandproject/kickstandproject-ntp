class ntp::client {
  include ntp::params::client
  include ntp::client::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
