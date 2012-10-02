# == Class: ntp::server
#
# This class manages the NTP server
#
# === Parameters
#
# [*monitor*]
#
# [*servers*]
#
# === Variables
#
# === Examples
#
#  class { 'ntp::server': }
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
class ntp::server(
  $monitor = false,
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
