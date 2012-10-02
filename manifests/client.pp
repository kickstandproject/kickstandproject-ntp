# == Class: ntp::client
#
# This class manages the NTP client
#
# === Examples
#
#  class { 'ntp::client': }
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
class ntp::client {
  include ntp::params::client
  include ntp::client::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
