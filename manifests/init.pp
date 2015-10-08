# == Class: systemd
#
# Manage systemd configurations
#
# === Examples
#
# include ::systemd
#
# === Authors
#
# Nicolas Dandrimont <nicolas@dandrimont.eu>
#
# === Copyright
#
# Copyright 2015 The Software Heritage developers
#
class systemd {
  exec {'systemd-daemon-reload':
    path        => '/sbin:/usr/sbin:/bin:/usr/bin',
    command     => 'systemctl daemon-reload',
    refreshonly => true,
  }
}
