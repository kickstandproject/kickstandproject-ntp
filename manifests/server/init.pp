# == Class: ntp::server::init
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
class ntp::server::init {
  include ntp::server::install
  include ntp::server::config
  include ntp::server::service

  if ($ntp::server::monitor) {
    include ntp::server::monitor
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
