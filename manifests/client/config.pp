# == Class: ntp::client::config
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
