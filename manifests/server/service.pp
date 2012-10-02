# == Class: ntp::server::service
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
class ntp::server::service {
  service { $ntp::params::server::servicename:
    ensure      => running,
    enable      => true,
    hasrestart  => $ntp::params::server::hasrestart,
    hasstatus   => $ntp::params::server::hasstatus,
    require     => Class['ntp::server::config'],
    subscribe   => File[$ntp::params::server::configfile],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
