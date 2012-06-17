class ntp::server(
  $monitor = true,
  $servers = [
    '0.pool.ntp.org',
    '1.pool.ntp.org',
    '2.pool.ntp.org',
  ],
) {
  include ntp::client
  include ntp::params::server
  include ntp::server::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
