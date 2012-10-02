# == Class: ntp::server::config
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
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
