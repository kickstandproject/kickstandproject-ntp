# == Class: ntp::params::server
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
